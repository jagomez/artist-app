class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :opportunities
  has_many :artist_statements
  has_many :deadlines
  has_many :images
  has_many :educations
  has_many :experiences

  def full_name
    "#{first_name} #{last_name}"
  end 
end
