require "test_helper"

class HomeTest < ActiveSupport::TestCase

  def home
    @home ||= Home.new
  end

  def test_valid
    assert home.valid?
  end

end
