class MemosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_memo, only: [:show, :edit, :update, :destroy]

  def index
    @memos = Memo.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @memo = Memo.new
  end

  def edit
  end

  def create
    @memo = Memo.new(memo_params)

    if @memo.save
      redirect_to @memo
    else
      redirect_to :new
    end
  end

  def update
    if @memo.update(memo_params)
      redirect_to @memo
    else
      redirect_to :edit
    end
  end

  def destroy
    @memo.destroy
    redirect_to memos_path
  end

  private
  def set_memo
    @memo = Memo.find(params[:id])
  end

  def memo_params
    params.require(:memo).permit(:title, :body, :user_id)
  end
end
