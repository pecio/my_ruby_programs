# coding: utf-8
require 'mongo'
require 'parseconfig'

# Load DB access info
config = ParseConfig.new('/Users/raul/.mongohq.conf')

# Connect to MongoHQ
db = Mongo::Connection.new(config.get_value('host'), config.get_value('port')).db('rubylearning')
auth = db.authenticate(config.get_value('user'), config.get_value('pass'))

if !auth
then
  puts 'Could not authenticate to database'
  exit
end

fulano = {
  :firstName => 'Fulano',
  :lastName => 'de Tal',
  :mobile => '654321',
  :email => ['fulano@example.org'] }

aitor = {
  :firstName => 'Aitor',
  :lastName => 'Tilla',
  :homePhone => '98765',
  :mobile => '67543',
  :email => ['aitor@example.net']
}

dolores = {
  :firstName => 'Dolores',
  :lastName => 'Fuertes',
  :nickname => 'Pupas',
  :mobile => '68786',
  :email => ['dolores@example.org', 'fuertesd@example.com']
}

pilar = {
  :firstName => 'Pilar',
  :lastName => 'Ica',
  :homePhone => '99988',
  :birthDate => Time.local(1945, 'may', 31)
}

andres = {
  :firstName => "Andrés",
  :lastName => 'Trozado',
  :nickname => 'Trozo',
  :mobile => '66554',
  :email => ['andres.trozado@example.com']
}

carmelo = {
  :firstName => 'Carmelo',
  :lastName => "Cotón",
  :email => ['coton@example.com']
}

# Select collection
coll = db.collection('contacts')

# Create an index
coll.create_index([['lastName', Mongo::ASCENDING], ['firstName', Mongo::ASCENDING]])

# Insert data
coll.insert(fulano)
coll.insert(aitor)
coll.insert(dolores)
coll.insert(pilar)
coll.insert(andres)
