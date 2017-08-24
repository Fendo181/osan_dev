class ProfilesController < ApplicationController
  def show
  end

  def edit
  end

  def update
   @user = User.find(1)
   @profile = Profile.new(user_id:@user.id)
   if @profile.update_attributes(:gallery_name,'gallery_name')
     # 更新に成功した場合を扱う。
   else
     render 'new'
   end
 end

  def delete
  end
end
