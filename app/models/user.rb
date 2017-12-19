class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader
  # relations
  has_many :posts
  has_many :comments

  def display_avatar
    if avatar.url
      ActionController::Base.helpers.image_tag(avatar.url, height: '40', width: '40')
    else
      nil
    end
  end
end
