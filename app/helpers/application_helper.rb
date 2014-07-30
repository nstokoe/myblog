module ApplicationHelper

  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    page_title.empty? ? base_title : "#{base_title} | #{page_title}"
  end

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
