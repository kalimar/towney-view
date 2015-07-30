require "test_helper"

class AdminTest < ActiveSupport::TestCase

  def admin
    @admin ||= Admin.new
  end

  def test_valid
    assert admin.valid?
  end

end
