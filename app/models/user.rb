class User < ActiveRecord::Base
  attr_accessible :uid, :provider, :fname, :lname, :email, :image
  def self.create_with_omniauth(auth)
		create! do |user|
		  user.provider = auth["provider"]
		  user.uid = auth["uid"]
		  user.fname = auth["info"]["first_name"]
		  user.lname = auth["info"]["last_name"]
		  user.email = auth["info"]["email"]
		  user.image = auth["info"]["image"]
	  end
	end
end
