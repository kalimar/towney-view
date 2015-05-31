require "test_helper"

class HouseFlowTest < Capybara::Rails::TestCase
  test "home page" do
    visit root_path
    page.must_have_content "Neighbors"
    page.must_have_content "Service Recommendations"
    page.must_have_content "Photos"
    page.must_have_content "My House"
    page.must_have_content "Travel"
  end
end
