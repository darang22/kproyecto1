class BlogsController < ApplicationController
 
    def index
        @blogs = Blog.all
    end

    def misblogs
        if logged_in?
            @blogs = current_user.blogs
        else
            redirect_to root_path
        end
    end

    def new
        if !logged_in?
            redirect_to login_path
        end
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def create
        @blog = Blog.new(blog_params)
        @blog.usuario = current_user
        @blog.save
        redirect_to @blog
    end

    private
        def blog_params
            params.require(:blog).permit(:titulo,:contenido)
        end
end