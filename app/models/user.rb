class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_mem, :phonenumber, :university, :item_id, :category_id
  has_many :items
  has_many :categories 
  validates :email, :format => { :with => /.*.edu\Z/, :message => "must be a university email address (ends with .edu)"}
end
