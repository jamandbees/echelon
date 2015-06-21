require "data_mapper"

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres://servernotes:servernotes@localhost/servernotes')