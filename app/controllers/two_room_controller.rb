class TwoRoomController < ApplicationController
  def index
    set_meta_tags(
      title: '투룸 사진들'.freeze,
      og: {
        title: '투룸 사진'.freeze,
        image: helpers.image_url('two/301호-거실2.jpg'.freeze),
        url: two_room_url,
      }
    )
  end
end
