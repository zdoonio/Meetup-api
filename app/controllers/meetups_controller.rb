class MeetupsController < ApplicationController

  def index
    meetups = Meetup.all
    render json: {status: 'SUCCESS', message: 'Loaded meetups', data: meetups}, status: :ok
  end

  def show
    meetup = Meetup.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded meetup', data: meetup}, status: :ok
  end

  def create
    meetup = Meetup.new(meetup_params)

    if meetup.save
      render json: {status: 'SUCCESS', message: 'Meetup added', data: meetup}, status: :created
    else
      render json: {status: 'ERROR', message: 'Meetup not added', data: meetup.errors}, status: :bad_request
    end
  end

  def destroy
    meetup = Meetup.find(params[:id])
    meetup.destroy
    render json: {status: 'SUCCESS', message: 'Meetup deleted', data: meetup}, status: :ok
  end

  private

  def meetup_params
    params.permit(:name , :description, :evaluation_date, :latitude, :longtiude)
  end
end
