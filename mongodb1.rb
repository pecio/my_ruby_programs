require 'mongo'
conn = Mongo::Connection.new
db = conn.db("rubylearning")
db.collection_names.each { |name| puts name }
