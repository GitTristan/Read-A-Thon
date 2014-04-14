require "spec_helper"

feature "View the homepage" do
  scenario " user sees correct information" do
    visit root_path
    
    expect(page).to have_content "Welcome Home"
    expect(page).to have_title "Readathon App"
  end
end
