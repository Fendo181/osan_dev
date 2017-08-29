class EventsController < ApplicationController
  def new
    @community = current_user.communities.find(params[:id])
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end


  def edit
    @event = Event.find(params[:id])
  end


  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      #登録成功時の処理
      redirect_to @event
    else
      redirect_to 'edit'
    end
  end

  def create
    @community = current_user.communities.find(params[:id])
    @event = current_user.events.build(event_params)
    @event.community_id = @community.id
    # binding.pry
    #ユーザidとコミュニティidに紐付いてコミュニティを作成する。
    if @event.save
      #ユーザ登録が成功した時点で@community_commnetも作成する
      # @profile = Profile.new(user_id: @user.id).save
      redirect_to @event
    else
      render 'delete'
    end
  end

  def delete
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :location,
                                      :money, :content)
    end

end
