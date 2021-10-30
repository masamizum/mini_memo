class MemosController < ApplicationController
  before_action :set_memo, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
  end

  def edit
    #@memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
  end

  def show
    #@memo = Memo.find(params[:id])
  end

  private
  def memo_params
    params.require(:memo).permit(:name, :image, :text)
  end

  def set_memo
    @memo = Memo.find(params[:id])
  end
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
