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
    Location.create(name: "Mercury")
    Location.create(name: "Venus")
    Location.create(name: "Earth")

    User.create(
      provider: "github",
      uid: "2",
      username: "herp",
      email: "herp@gmail.com",
      avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )

    User.create(
      provider: "github",
      uid: "7",
      username: "derp",
      email: "derp@gmail.com",
      avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )

    User.create(
      provider: "github",
      uid: "3",
      username: "derpimir",
      email: "derpimir@gmail.com",
      avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )

    Meetup.create(title: "Earth Viewing", description: "Let's view the earth!", meetup_date: "05/01/2016", user_id: 1, location_id: 1)

    Meetup.create(title: "Dangerous Atmospheres", description: "DON'T BREATH", meetup_date: "10/06/2016", user_id: 2, location_id: 2)

    Meetup.create(title: "Fire Breathing", description: "I am a DRAGON.", meetup_date: "05/06/2016", user_id: 3, location_id: 2)

    Meetup.create(title: "Broken Record", description: "Bad karaoke.", meetup_date: "06/06/2016", user_id: 1, location_id: 3)

    Meetup.create(title: "Crab Hunting", description: "Tasty shells.", meetup_date: "06/24/2016", user_id: 2, location_id: 1)

    visit '/meetups'
    sign_in_as user

    expect(page).to have_content "Broken Record"
    click_link "Broken Record"
    expect(page).to have_content "Broken Record"
    expect(page).to have_content "Bad karaoke."
    expect(page).to have_content "06/06/2016"
    expect(page).to have_content "Earth"
    expect(page).to have_content "herp"
  end
end
