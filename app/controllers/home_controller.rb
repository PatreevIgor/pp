class HomeController < ApplicationController

  def index
  	# binding.pry
  	@rooms = Room.all
  	@users = User.all
  end

  def appointment
  	user_name = params["user"]
  	room_name = params["room"]
  	room_id = Room.where(title: room_name).first.id
    User.where(name: user_name).first.update_attributes( room_id:room_id )
  	# binding.pry

  end

end
