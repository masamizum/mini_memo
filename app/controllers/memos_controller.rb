class MemosController < ApplicationController
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

  private
  def memo_params
    # params.require(:memo).permit(:name, :image, :text)
    params.require(:memo).permit(:name, :text)
  end

end
