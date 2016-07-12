class MapController < ApplicationController
  def index
    set_meta_tags(
      title: '찾아오시는 길'.freeze,
      og: {
        title: title,
        image: helpers.image_url('overview.jpg'.freeze),
        url: home_url,
      }
    )
  end
end
