# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
Location.create(name: "Mercury")
Location.create(name: "Venus")
Location.create(name: "Earth")
Location.create(name: "Mars")
Location.create(name: "Jupiter")
Location.create(name: "Saturn")
Location.create(name: "Uranus")
Location.create(name: "Neptune")
Location.create(name: "Pluto")

location = rand(1..9)

creator_1 = User.create(
  provider: "github",
  uid: "1",
  username: "herp",
  email: "herp@gmail.com",
  avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
)

creator_2 = User.create(
  provider: "github",
  uid: "9",
  username: "derp",
  email: "derp@gmail.com",
  avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
)

creator_3 = User.create(
  provider: "github",
  uid: "3",
  username: "derpimir",
  email: "derpimir@gmail.com",
  avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
)

user = rand(1..3)

Meetup.create(title: "Abstract Animal Aliases", description: "Deathly Dragons", meetup_date: "05/06/2016", user_id: user, location_id: location)

Meetup.create(title: "Broken Record", description: "Bad karaoke.", meetup_date: "06/06/2016", user_id: user, location_id: location)

Meetup.create(title: "Crab Hunting", description: "Tasty shells.", meetup_date: "06/24/2016", user_id: user, location_id: location)

Meetup.create(title: "Dangerous Atmospheres", description: "DON'T BREATH", meetup_date: "10/06/2016", user_id: user, location_id: location)

Meetup.create(title: "Ephemeral Vapors", description: "Good times for all.", meetup_date: "09/06/2016", user_id: user, location_id: location)

Meetup.create(title: "Fairy Fortresses", description: "Pretty building of buildings!", meetup_date: "08/16/2016", user_id: user, location_id: location)

Meetup.create(title: "Grand Ol' Opry", description: "Bad country music.", meetup_date: "11/26/2016", user_id: user, location_id: location)

Meetup.create(title: "Hell's Angel's New Members Gathering", description: "Vroom vroom and fundraising for cancer.", meetup_date: "07/13/2016", user_id: user, location_id: location)

attendee_1 = User.create(provider: "github", uid: "2", username: "herpina", email: "herpina@gmail.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400")

attendee_2 = User.create(provider: "github", uid: "4", username: "derpald", email: "derpald@gmail.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400")

attendee_3 = User.create(provider: "github", uid: "5", username: "herpson", email: "herpson@gmail.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400")

attendee_4 = User.create(provider: "github", uid: "6", username: "derpina", email: "derpina@gmail.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400")

attendee_5 = User.create(provider: "github", uid: "7", username: "herpinstein", email: "herpinstein@gmail.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400")

attendee_6 = User.create(provider: "github", uid: "8", username: "derpigan", email: "derpigan@gmail.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400")

attendees = rand(1..9)
meetups = rand(1..8)

25.times do
Attendee.create(meetup_id: meetups, user_id: attendees)
end
