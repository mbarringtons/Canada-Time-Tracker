class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many  :days
         
  validates :name, presence: true
  validates :user_country, presence: true
  
  
  # \A matches beginning of string, where [^@\s] means @ should ONLY precede capgemini, as it's ensuring that it's not matched for this.
  validates_format_of :email, :with => /\A([^@\s]+)@(capgemini\.com)\z/
end
