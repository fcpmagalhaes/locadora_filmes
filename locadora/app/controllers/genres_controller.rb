class GenresController < ApplicationController
	
	def index
		@genres = Genre.all
	end

	def new
		@genre = Genre.new
	end

	def create
		genre_params = params.require(:genre).permit(:name)
		@genre = Genre.new(genre_params)
		@genre.save
		redirect_to @genre
	end
	
	def show
		@genre = Genre.find(params[:id])
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
		@genre = Genre.find(params[:id])
		genre_params = params.require(:genre).permit(:name)
		@genre.update(genre_params)
		redirect_to @genre 
	end

	def destroy
		@genre = Genre.find(params[:id])
		@genre.destroy
		redirect_to films_url
	end

end
