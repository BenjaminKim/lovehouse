class OneRoomController < ApplicationController
  def index
    set_meta_tags(
      title: '원룸 사진들'.freeze,
      og: {
        title: '원룸 사진'.freeze,
        image: helpers.image_url('one/원룸-전경.png'.freeze),
        url: one_room_url,
      }
    )
  end
end