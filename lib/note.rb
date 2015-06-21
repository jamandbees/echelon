require 'data_mapper'

module Echelon
  class Note
    include DataMapper::Resource
  
    property :id, Serial
    property :body, Text
    property :created_at, DateTime
    property :updated_at, DateTime
  
    belongs_to :computer
  end
end