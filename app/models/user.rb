class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :favorite_posts
  has_many :favorites, through: :favorite_posts, source: :post

  def has_favorited?(post)
    self.favorites.include?(post)
  end

end
