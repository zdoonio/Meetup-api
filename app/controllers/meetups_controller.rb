class MeetupsController < ApplicationController

  def index
    @meetups = Meetup.all
    render json: @meetups
  end

  def new
  end

  def delete
  end
end
