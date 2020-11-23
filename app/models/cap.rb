class Cap < ApplicationRecord
  belongs_to :user
  has_many :data, dependent: :destroy
end
