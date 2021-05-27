# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(birth_date: '2009/01/20', color: 'rainbow', name: 'Spud', sex: 'M', description: 'Can fly')
cat2 = Cat.create(birth_date: '2012/05/25', color: 'brown', name: 'Squid', sex: 'F', description: 'Pro Gamer')
cat3 = Cat.create(birth_date: '2018/08/13', color: 'tuxedo', name: 'Rabbit', sex: 'F', description: 'cat')

cattum = Cat.create!(birth_date: '2000/12/16', color: 'rainbow', name: 'Doggo', sex: 'M', description: "I am a doggo that was turned into cattums")
cattum2 = Cat.create!(birth_date: '1999/04/12', color: 'gray', name: 'Alan', sex: 'F', description: "I am a cat")
