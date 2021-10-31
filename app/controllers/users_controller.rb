class UsersController < ApplicationController
  def show
    #@nickname = current_user.nickname
    #@memos = current_user.memos
    user = User.find(params[:id])
    @nickname = user.nickname
    @memos = user.memos

  end
end
