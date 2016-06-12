class HomeController < ApplicationController
  def index
    place_icon_for_talk_bubble = 'http://mud-kage.kakaocdn.net/dn/Az1ie/btqcMWyugJs/zeYYYakxR3rDtPcDMs4bV0/img.png'.freeze
    title = description = '신림동 쑥고개 풀옵션 원룸 투룸 직거래'.freeze
    set_meta_tags(
      title: title,
      description: description,
      keywords: title,
      og: {
        title: title,
        description: description,
        image: place_icon_for_talk_bubble,
        url: home_url,
      }
    )
  end
end