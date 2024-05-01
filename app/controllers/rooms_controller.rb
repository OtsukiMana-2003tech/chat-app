class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    # 保存に成功した場合と失敗した場合の実行を分けておく
    if @room.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
