class User < ApplicationRecord

	has_secure_password

	has_one :profile, dependent: :destroy
	has_one :cap
	has_one :account, dependent: :destroy

	has_and_belongs_to_many :treatments

	has_many :drugs, through: :treatments
	has_many :data, through: :cap

	enum role: [:patient, :manufacturing, :provider, :admin, :tech_support]
	after_initialize :set_default_role, :if => :new_record?

	def set_default_role
		self.role ||= :patient
	end

end
