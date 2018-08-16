class FilmsController < ApplicationController

	def index
		@films = Film.search(params[:search]).created_at
	end

	def new
		@film = Film.new
	end

	# def create
	# 	@film = Film.new(film_params)
	# 	@film.save
	# 	redirect_to @film
	# end
	def create
		@film = Film.new(film_params)
		if @film.save
			redirect_to @film, notice:"Filme criado com sucesso!"
		else
			render :new
		end
	end

	def show
		@film = Film.find(params[:id])
		@genres = @film.genre
	end

	def edit
		@film = Film.find(params[:id])
	end

	def update
		@film = Film.find(params[:id])
		@film.update(film_params)
		redirect_to @film, notice:"Filme atualizado com sucesso!"
	end

	def destroy
		@film = Film.find(params[:id])
		@film.destroy
		redirect_to films_url, alert:"Filme apagado com sucesso!"
	end

	private
		def film_params
			film_params = params.require(:film).permit(:name, :description, :year, :genre_id, :price, :poster)
		end
	
end
