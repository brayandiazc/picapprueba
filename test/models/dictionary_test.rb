# == Schema Information
#
# Table name: dictionaries
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  fruit_id    :bigint           not null
#  pet_id      :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class DictionaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
