class TracksController < ApplicationController
  before_action :set_track, only: [:update, :destroy]

  def create
    @track = Track.new(track_params)
    if @product.save
      redirect_to @track
    else
      render action: 'new'
    end
  end

  def update
    if @track.update(track_params)
      redirect_to @track
    else
      render action: 'edit'
    end
  end

  def destroy
    @track.destroy
    redirect_to tracks_url
  end

  private

    def set_track
      @track = Track.find(params[:id])
    end

    def track_params
      params.require(:track).permit(:name, :sound, :remote_sound_url)
    end
end
