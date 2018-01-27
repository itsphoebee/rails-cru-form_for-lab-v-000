class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(strong_params)
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
