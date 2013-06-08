class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name,:email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :posts

  validates :password, :password_confirmation, :presence => true
  validates :first_name, :presence => true, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 4 }
  validates :email,   
            :presence => true,   
            uniqueness: true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 


end
