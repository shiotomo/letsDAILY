class MemosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_memo, only: [:show, :edit, :update, :destroy]

  def index
    @memos = current_user.memos.all
  end

  def show
  end

  def new
    @memo = current_user.memos.new
  end

  def edit
  end

  def create
    @memo = current_user.memos.new(memo_params)

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
    @memo = current_user.memos.find(params[:id])
  end

  def memo_params
    params.require(:memo).permit(:title, :body, :user_id)
  end
end
