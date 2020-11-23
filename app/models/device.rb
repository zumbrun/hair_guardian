class Device < ApplicationRecord

  has_many :data, dependent: :destroy
  
end
