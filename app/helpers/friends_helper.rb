module FriendsHelper
    def gravatar_for(friend, size: 80)
        gravatar_id = Digest::MD5::hexdigest(friend.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#
        {gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: friend.first_name, class: "gravatar")
    end
            
end
