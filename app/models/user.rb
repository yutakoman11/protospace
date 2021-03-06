class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :prototypes
  has_many :likes
  mount_uploader :avatar, AvatarUploader
  validates :email, :nickname, :member_name, presence: true
end
