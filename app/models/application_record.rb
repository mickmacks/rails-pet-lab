class ApplicationRecord < ActiveRecord::Base


	# helper_method :owner_login

	def owner_login
		#add stuff user ||= session user id 
	end

  self.abstract_class = true
end
