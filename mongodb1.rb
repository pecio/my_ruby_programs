require 'mongo'
# conn = Mongo::Connection.new
# db = conn.db("rubylearning")
db = Mongo::Connection.new('staff.mongohq.com', 10080).db('rubylearning')
auth = db.authenticate('$$$$', '$$$$$$$$')
# db.collection_names.each { |name| puts name }
coll = db.collection("students")

doc = {:name => 'Manisha', :dob => Time.now, :loves => ['english', 'marathi'], :weight => 62, :gender => 'f', :country => 'india'}
coll_id = coll.insert(doc)
coll.update( { :_id => coll_id } , '$set' => { :weight => 60 } )
