class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :things, :inverse_of => :user

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
end
