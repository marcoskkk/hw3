class PostsController < ApplicationController
    def index
      redirect_to "/"
    end

    def show
      # .find(123) is the same as .where({ id: 123 })[0]
      redirect_to "/"
    end

    def new
        @post = Post.new
        @post.place_id = params["place_id"]
      end
    
      def create
        @post = Post.new(params[:post])
        @post.save
        redirect_to "/"
      end
end
