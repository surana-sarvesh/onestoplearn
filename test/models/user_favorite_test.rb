# == Schema Information
#
# Table name: user_favorites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner      :string
#  language   :string
#  url        :string
#

require 'test_helper'

class UserFavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
