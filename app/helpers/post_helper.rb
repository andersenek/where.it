module PostHelper
  def display_star(post)
    if current_user.has_favorited?(post)
      return link_to image_tag("unfavorite.png", class: "icon-edit"), favorite_post_path(@post, type: "unfavorite"), method: :put
    else
      return link_to image_tag("favorite.png", class: "icon-edit"), favorite_post_path(@post, type: "favorite"), method: :put
    end
  end
end
