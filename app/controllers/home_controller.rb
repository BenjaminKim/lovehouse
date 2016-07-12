class HomeController < ApplicationController
  def index
    title = description = '신림동 쑥고개 풀옵션 원룸 투룸 직거래'.freeze
    set_meta_tags(
      title: title,
      description: description,
      keywords: title,
      og: {
        title: title,
        description: description,
        image: helpers.image_url('overview.jpg'.freeze),
        url: home_url,
      }
    )
  end
end