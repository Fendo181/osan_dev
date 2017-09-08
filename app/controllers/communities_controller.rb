class CommunitiesController < ApplicationController

  def index
    @communities = Community.all
  end

  def new
    @community = Community.new
  end

  def show
    # @community = findcurrent_user.communities.build(community_params)
    @community = Community.find(params[:id])
    @events = Event.where(community_id: @community.id)
  end

  def create
    #ユーザに紐付いてコミュニティを作成する。
    @community = current_user.communities.build(community_params)
    if @community.save
      #ユーザ登録が成功した時点で@community_commnetも作成する
      # @profile = Profile.new(user_id: @user.id).save
      redirect_to @community
    else
      render 'delete'
    end
  end

  def edit
    @community = current_user.communities.find(params[:id])
  end

  def update
    @community = current_user.communities.find(params[:id])
    if @community.update_attributes(community_params)
    #登録成功時の処理
      redirect_to @community
    else
      render 'index'
    end
  end

  def delete
  end

  private

    def community_params
      params.require(:community).permit(:name, :content, :category,
                                   :admin_allowed,:picture)
    end

end
