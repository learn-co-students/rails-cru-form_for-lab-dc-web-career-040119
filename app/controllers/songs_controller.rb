class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(strong_params)
    redirect_to @song
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(strong_params)
      redirect_to song_path(@song)
    # @artist.update(title: params[:article][:title], description: params[:article][:description])
    # redirect_to article_path(@artist)
  end
end

private

def strong_params
  params.require(:song).permit!
end
