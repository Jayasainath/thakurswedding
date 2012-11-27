class PostsController < ApplicationController

	def index
		render "new"
	end

	def new
		@post  = Post.new
		@posts = Post.find(:all)
	end

	def create
		@post = Post.new(params[:post])
		respond_to do |format|
			if @post.save
				format.html {redirect_to new_post_path, notice: "Thanks for your Wishes!"}
				format.json {render json: @post, status: :created, location: new_post_path}
			else
				format.html {render :action => "new"}
				format.json {render json: @post.errors, status: :unprocessable_entity}
			end
		end
	end

	def show

	end



end
