class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(strong_params)
    redirect_to artist_path(@artist)
  end

  def show
  end

  def edit
  end

  def update
  end

  private
    def strong_params
      params.require(:artist).permit(:name,:bio)
    end

end
