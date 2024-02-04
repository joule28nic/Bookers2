class UsersController < ApplicationController

  def create
    @post = Book.new(book_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to book_path(@post.id)
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.all
  end

  def edit
  end
end
