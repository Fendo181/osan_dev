class UsersController < ApplicationController
  def new
    @user = User.new
  end

  #一旦はViewファイルの為
  def profile
    @user = User.new
  end

end
