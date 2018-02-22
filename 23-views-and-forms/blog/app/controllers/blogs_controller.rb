class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    render :index
  end

  def new
    @blog = Blog.new
    render :new
  end

  def create
    blog = Blog.new
    # USE WITH form_tag
    # blog.author = params[:author]
    # blog.title = params[:title]
    # blog.text = params[:text]

    # USE WITH form_for
    blog.author = params[:blog][:author]
    blog.title = params[:blog][:title]
    blog.text = params[:blog][:text]

    blog.save
  end

  def edit
    @blog = Blog.find(params[:id])
  end
end
