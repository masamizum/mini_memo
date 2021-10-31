class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @memos = current_user.memos
  end
end
