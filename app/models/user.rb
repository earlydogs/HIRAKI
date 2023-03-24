class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]
  
  attr_writer :login
  
  def login
    @login || self.email || self.uid
  end
  
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(email) = :value OR lower(uid) = :value", { value: login.downcase }]).first
    else
      where(conditions).first
    end
  end
  


end
