# == Schema Information
#
# Table name: pets
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Pet < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :description, presence: true
end
