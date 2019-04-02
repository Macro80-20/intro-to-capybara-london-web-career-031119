# Integration Tests – Tests that exercise the outermost part of our application code from the user's perspective, simulating user interactions with the application via its interface (in this example, a web browser and HTML).

# Capybara – A Ruby library that works with RSpec to allow you to write extremely powerful, simple, and semantic integration tests for web applications.

# visit & page – Capybara methods for controlling the test user's browser and examining the current state of the page as they 'see' it.

# have_selector, have_field, & have_text – Capybara matchers for ensuring that the page contains certain matching HTML or text.

# fill_in & click_button – Capybara methods for mimicking user activities, such as filling in form fields or clicking buttons.

# A simple Sinatra form application with two routes, GET and POST, and a working form that accepts input and sends a dynamic response.