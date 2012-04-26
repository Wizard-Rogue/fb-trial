class User < ActiveRecord::Base
  attr_accessible :uid, :provider, :fname, :lname, :email, :image
end
