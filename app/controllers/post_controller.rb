class PostController < ApplicationController
    protect_from_forgery with: :null_session
    def create
        new_post = Post.create(contents: params[:contents])
        render json: { post: new_post}
    end
end
