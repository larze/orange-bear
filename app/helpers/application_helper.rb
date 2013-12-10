module ApplicationHelper

  def avatar_url(people)
    gravatar_id = Digest::MD5.hexdigest(people.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end
end
