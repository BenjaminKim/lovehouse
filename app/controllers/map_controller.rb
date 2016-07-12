class MapController < ApplicationController
  def index
    title = '찾아오시는 길'.freeze
    set_meta_tags(
      title: title,
      og: {
        title: title,
        image: helpers.image_url('overview.jpg'.freeze),
        url: home_url,
      }
    )
  end
end
