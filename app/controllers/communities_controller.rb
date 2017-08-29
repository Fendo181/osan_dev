class CommunitiesController < ApplicationController

  def index
  end

  def new
    @community = Community.new
  end

  def show
    # @community = findcurrent_user.communities.build(community_params)
    @community = Community.find(params[:id])
  end

  def create
    #ユーザに紐付いてコミュニティを作成する。
    @community = current_user.communities.build(community_params)
    if @community.save
      #ユーザ登録が成功した時点で@community_commnetも作成する
      # @profile = Profile.new(user_id: @user.id).save
      redirect_to @community
    else
      render 'edit'
    end
  end

  def edit
  end

  def updtae
  end

  def delete
  end

  private

    def community_params
      params.require(:community).permit(:name, :content, :caregory,
                                   :admin_allowed)
    end

end
