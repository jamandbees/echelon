require_relative 'config/application'

require 'computer'
require 'note'
require 'sinatra'

#Top level namespace for the echelon app.
include Echelon

set :logging, true

DataMapper.finalize
DataMapper.auto_upgrade!

post '/:domain_name/notes/' do
  #Create a computer object
  computer = Computer.first_or_new({domain_name: :domain_name}, {domain_name: :domain_name})
  
  request.body.rewind
  note = Note.new({body: request.body.read})
  computer.notes << note
  saved = computer.save
  
  unless (saved)
    logger.info("Failed to save <#{computer.inspect}>")
  end
end