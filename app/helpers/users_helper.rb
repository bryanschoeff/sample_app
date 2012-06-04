module UsersHelper
  
  # Returns the gravitar for the given user
  def gravitar_for(user, options = { size: 50 })
    gravitar_id = Digest::MD5::hexdigest(user.email.downcase)
    
    size = options[:size]
    gravitar_url = "http://gravatar.com/avatar/#{gravitar_id}?s=#{size}"
    image_tag(gravitar_url, alt: user.name, class: "gravitar")
  end
end
