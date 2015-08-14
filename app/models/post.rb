class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :favorite_posts
  has_many :favorited_by, through: :posts, source: :user

  def self.search(search_term)
    where("title ILIKE ?", "%#{search_term}%")
  end

  # I think this method is unclear, and may not do what you or I expect...
  # it appears to only return whether anyone has favorited a post... I'd expect
  # it to return whether a specific user has favorited a specific post.
  # in that case, you'd need to pass in a user_id here as well.
  def self.get_favorite(id)
    favorited = FavoritePost.where(post_id: id)
    if favorited.length > 0
      return true
    else
      return false
    end
  end

end
