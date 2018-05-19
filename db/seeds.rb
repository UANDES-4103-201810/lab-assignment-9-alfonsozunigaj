# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Director.create(first_name: 'Jay', last_name: 'Roach', birth_date: Date.parse('14/06/1957'), description: 'American film director, producer and screenwriter, best known for directing the Austin Powers films and Meet the Parents.')

Actor.create(first_name: 'Robert', last_name: 'De Niro', birth_date: Date.parse('07/08/1943'), description: 'One of the greatest actors of all time.')
Actor.create(first_name: 'Ben', last_name: 'Stiller', birth_date: Date.parse('30/11/1965'), description: 'American actor, comedian, writer, producer, and director. He is the son of veteran comedians and actors Jerry Stiller and Anne Meara.')
Actor.create(first_name: 'Teri', last_name: 'Polo', birth_date: Date.parse('01/06/1969'), description: 'American actress. She starred as Pam Byrnes-Focker in the Meet the Parents trilogy.')
Actor.create(first_name: 'Blythe', last_name: 'Danner', birth_date: Date.parse('03/02/1943'), description: 'American actress. She won two Primetime Emmy Awards for Best Supporting Actress in a Drama Series for her role as Izzy Huffstodt on Huff.')

Movie.create(title: 'Meet the Parents', description: "Male nurse Greg Focker meets his girlfriend's parents before proposing, but her suspicious father is every date's worst nightmare.", duration: 108, director_id: 1, release_date: Date.parse('6/10/2000'))

ActorMovie.create(role: 'Jack Byrnes', actor_id: 1, movie_id: 1)
ActorMovie.create(role: 'Greg Focker', actor_id: 2, movie_id: 1)
ActorMovie.create(role: 'Pam Byrnes', actor_id: 3, movie_id: 1)
ActorMovie.create(role: 'Dina Byrnes', actor_id: 4, movie_id: 1)

Category.create(name: 'Comedy', description: 'Genre of film in which the main emphasis is on humor.')

Address.create(street: '93 Pound Hollow Road', apartment: false, description: 'House in NY state', zipcode: '11545', movie_id: 1)
