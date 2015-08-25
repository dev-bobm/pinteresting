class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
 	# na de komma zorgt ervoor dat pins verwijderd worden als user verwijderd wordt        
  has_many :pins, dependent: :destroy

  validates :name, presence: true
end
