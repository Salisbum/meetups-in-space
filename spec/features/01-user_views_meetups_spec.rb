require 'spec_helper'

feature "User views meetup list" do
  let(:user) do
  User.create(
    provider: "github",
    uid: "1",
    username: "jarlax1",
    email: "jarlax1@launchacademy.com",
    avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400 (85KB)"
  )
  end


  scenario "goes to meetups list page" do

    Meetup.create(title: "Earth Viewing", description: "Let's view the earth!", meetup_date: "05/01/2016", user_id: 1, location_id: 1)

    Meetup.create(title: "Dangerous Atmospheres", description: "DON'T BREATH", meetup_date: "10/06/2016", user_id: rand(1..3), location_id: rand(1..9))

    Meetup.create(title: "Fire Breathing", description: "I am a DRAGON.", meetup_date: "05/06/2016", user_id: 2, location_id: 2)

    Meetup.create(title: "Broken Record", description: "Bad karaoke.", meetup_date: "06/06/2016", user_id: rand(1..3), location_id: rand(1..9))

    Meetup.create(title: "Crab Hunting", description: "Tasty shells.", meetup_date: "06/24/2016", user_id: rand(1..3), location_id: rand(1..8))

    visit '/'
    sign_in_as user

    expect(page).to have_content "Broken Record"
    expect(page).to have_content "Crab Hunting"
    expect(page).to have_content "Dangerous Atmospheres"

    expect(page).to_not have_content "Fire Breathing"

  end



end
