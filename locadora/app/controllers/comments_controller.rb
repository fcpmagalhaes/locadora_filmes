class CommentsController < ApplicationController
	before_action :set_film

	def index
		@comments = @film.comments
	end 

	def new
		@comment = @film.comments.new
	end

	def create
		@comment = @film.comments.new(comment_params)
		if @comment.save
			redirect_to film_comments_path(@film), notice:'Comentario gravado com sucesso!'
		else
			render :new
		end
	end 

	private

		def comment_params
			params.require(:comment).permit(:name, :comment, :rating)
		end

		def set_film
			@film = Film.find(params[:film_id])
		end
end
