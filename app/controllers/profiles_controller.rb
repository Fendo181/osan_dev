class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(profile_params)
    #登録成功時の処理
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def delete
  end

  private

    def profile_params
      params.require(:profile).permit(:gallery_name, :hp, :tw_id,
                                      :insta_id,:content, :picture)
    end

end
