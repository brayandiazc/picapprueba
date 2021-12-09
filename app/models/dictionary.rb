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
class Dictionary < ApplicationRecord
  belongs_to :fruit
  belongs_to :pet

  # Validations
  validates :name,          presence: true,
                            uniqueness: true,
                            length: { maximum: 50 }
  validates :description,   presence: true,
                            length: { maximum: 500 }
  validates :fruit_id,      presence: true
  validates :pet_id,        presence: true
end
