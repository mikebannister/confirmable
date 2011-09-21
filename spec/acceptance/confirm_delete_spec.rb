require 'acceptance/acceptance_helper'

feature "Confirm", %q{
  In order to prevent myself from fucking up
  As an system user
  I want to be prompted for confirmation when I do dangerous things 
} do

  background do
    Widget.create(name: 'foo widget')
  end

  scenario "Confirm destruction" do
    visit "/widgets"
    
    page.should have_content "Listing widgets"
    page.should have_content "foo widget"
    
    click_link "Destroy"

    page.should have_content "Are you sure?"

    click_button "Yes"

    page.should have_content "Listing widgets"
    page.should_not have_content "foo widget"
  end

  scenario "Deny destruction" do
    visit "/widgets"
    
    page.should have_content "Listing widgets"
    page.should have_content "foo widget"
    
    click_link "Destroy"

    page.should have_content "Are you sure?"

    click_link "No"

    page.should have_content "Listing widgets"
    page.should have_content "foo widget"
  end
end
