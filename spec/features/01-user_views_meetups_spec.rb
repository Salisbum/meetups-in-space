require 'spec_helper'

feature "User views meetup list" do
  meetup_1 = Meetup.create(title: "Earth Viewing", description: "Let's view the earth!", meetup_date: "05/01/2016", user_id: 1, location_id: 1)

  meetup_2 = Meetup.create(title: "Fire Breathing", description: "I am a DRAGON.", meetup_date: "05/06/2016", user_id: 2, location_id: 2)

  scenario "goes to meetups list page" do
    visit '/'

    expect(page).to have_content "Earth Viewing"
    expect(page).to have_content "Fire Breathing"
  end



end
