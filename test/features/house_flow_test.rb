require "test_helper"

class HouseFlowTest < Capybara::Rails::TestCase
  test "home page" do
    visit root_path
    page.has_content "neighbors"

  end
end
