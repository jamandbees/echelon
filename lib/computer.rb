require 'data_mapper'
require 'note'

module Echelon
  #Models a computer, about which information is to be kept.
  class Computer
    include DataMapper::Resource
  
    property :id, Serial
    property :domain_name, Text
    property :created_at, DateTime
    property :updated_at, DateTime
  
    has n, :notes
  end
end