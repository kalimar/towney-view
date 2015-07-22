module ApplicationHelper

  def avatar size
    url = [
      "http://placebear.com/#{size.to_s}/#{size.to_s}",
      "http://lorempixel.com/#{size.to_s}/#{size.to_s}/animals",
       "http://lorempixel.com/#{size.to_s}/#{size.to_s}/cats"
    ].sample
    image_tag url, alt:"avatar", class:"image-object"
  end
end
