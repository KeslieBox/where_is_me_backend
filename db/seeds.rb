# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pronoun.create([{name: 'they/them/theirs'}, {name: 'she/her/hers'}, {name: 'he/him/his'}, {name: 'other'}])
Identity.create([{name: 'gay'}, {name: 'straight'}, {name: 'polyamorous'}, {name: 'pansexual'}, {name: 'asexual'}, {name: 'demisexual'}, {name: 'sapiosexual'}, {name: 'bisexual'}, {name: 'queer'}, {name: 'bicurious'}, {name: 'monogamous'}, {name: 'non-mongamous'}, {name: 'sexworker'}, {name: 'trans'}, {name: 'nonbinary'}, {name: 'transwoman'}, {name: 'transman'}, {name: 'transmasculine'}, {name: 'transfeminine'}, {name: 'other'},])
LookingFor.create([{name: 'friends'}, {name: 'dates'}, {name: 'relationship'}, {name: 'hookups'}, {name: 'fun'}, {name: 'other'},])
Interest.create([{name: 'nature'}, {name: 'astrology'}, {name: 'herbalism'}, {name: 'science'}, {name: 'kink'}, {name: 'bdsm'}, {name: 'farming'}, {name: 'gardening'}, {name: 'music'}, {name: 'dancing'}, {name: 'organizing'}, {name: 'art'}, {name: 'photography'}, {name: 'playing music'}, {name: 'movies'}, {name: 'food'}, {name: 'comedy'},])
Politic.create([{name: 'BLM'}, {name: 'BTLM'}, {name: 'ACAB'}, {name: 'No SWERFS'}, {name: 'No TERFS'}, {name: 'feminist'}, {name: 'communist'}, {name: 'socialist'}, {name: 'leftist'}, {name: 'anarchist'}, {name: 'abolitionist'}])
Status.create([{name: 'single'}, {name: 'married'}, {name: 'in a relationship'}, {name: 'in an open-relationship'}, {name: "it's complicated"}, {name: 'other'},])
