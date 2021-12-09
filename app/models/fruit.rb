# == Schema Information
#
# Table name: fruits
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Fruit < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :description, presence: true
end
