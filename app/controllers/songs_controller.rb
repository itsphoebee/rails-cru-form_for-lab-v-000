class SongsController < ApplicationController

  def new
    @song = Artist.new
  end

  def create
    @song = Artist.create(strong_params)
    redirect_to song_path(@song)
  end

  def show
    @song = find_id
  end

  def edit
    @song = find_id
  end

  def update
    @song = find_id
    @song.update(strong_params)
    redirect_to song_path(@song)
  end

  private
  def strong_params
    params.require(:song).permit(:name,:bio)
  end

  def find_id
    Artist.find(params[:id])
  end
end
