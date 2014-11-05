class Admin < ActiveRecord::Base
	require 'digest/sha2'
	validates :username, :national_id_no, :presence=>true, :uniqueness=>true
	validates :firstname, :lastname, :presence=>true

	validates :password, :confirmation => true

	attr_accessor :password_confirmation
	attr_reader :password

	validate :password_must_be_present
	def Admin.authenticate(name, password)
		if admin = find_by_username(name)
			if admin.hashed_password == encrypt_password(password, admin.salt)
			admin
			end
		end
	end

	def Admin.encrypt_password(password, salt)
		Digest::SHA2.hexdigest(password + "wibble" + salt)
	end
	# 'password' is a virtual attribute
	def password= (password)
		@password = password
		if password.present?
			generate_salt
			self.hashed_password = self.class.encrypt_password(password, salt)
		end
	end

	#def admin_params
		#params.require(:admin).permit(:password, :password_confirmation)
	#end

	private

	def password_must_be_present
		errors.add(:password, "Missing password" ) unless hashed_password.present?
	end

	def generate_salt
		self.salt = self.object_id.to_s + rand.to_s
	end
end
