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
  end

  def delete
  end

  def show
  end
end
