class EventsController < ApplicationController
  def new
    @community = current_user.communities.find(params[:id])
    @event = Event.new
  end

  def edit
  end

  def update
  end

  def create
    @community = current_user.communities.find(params[:id])
    #ユーザidとコミュニティidに紐付いてコミュニティを作成する。
    if @event.save
      #ユーザ登録が成功した時点で@community_commnetも作成する
      # @profile = Profile.new(user_id: @user.id).save
      redirect_to 'show'
    else
      render 'delete'
    end
  end

  def delete
  end

  def show
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :location,
                                    :money, :content)
  end

end
