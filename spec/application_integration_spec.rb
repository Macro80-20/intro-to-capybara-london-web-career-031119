require 'spec_helper'

# TODO 
# *When a user visits '/'
#  * they should see a greeting
#   *they should see a form with a name field
 
# *When a user submits the greeting form
#  * they should fill in the name with "Avi"
#   * they should click submit
#   * they should see "Hi Avi, it's nice to meet you!"

describe "GET '/' - Greeting Form" do
  
  it 'welcomes the user' do
    visit '/' #? the visit method nafivates the test's browser to a speicfic URL and expexts the body to inckude the text WELCOME! somwhere
    expect(page.body).to include("Welcome!") #* The page body will dump out all of the HTML in the current page as a string
  end

  # New test
  it 'has a greeting form with a user_name field' do
    visit '/'
    # Capybara page objects respond to methods that relate intimately to HTML and the DOM 
    # (Document Object Model) that defines web applications. You can literally ask the page object: 
    # "Hey, do you have HTML that matches the following selector?" Pretty amazing, right?
    expect(page).to have_selector("form") #?  exposes the session being used during the test. page repsonses to alot of methods such as click_link , fill_in
    expect(page).to have_field(:user_name)
  end
end

describe "POST '/greet' - User Greeting" do 
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Avi")
    click_button "Submit"

    expect(page).to have_text("Hi Avi, nice to meet you!")
  end
end