class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(strong_params)
    redirect_to @genre
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(strong_params)
      redirect_to genre_path(@genre)
    # @artist.update(title: params[:article][:title], description: params[:article][:description])
    # redirect_to article_path(@artist)
  end

  private

  def strong_params
    params.require(:genre).permit(:name)
  end

end
