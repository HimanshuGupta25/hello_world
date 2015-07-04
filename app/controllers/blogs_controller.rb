class BlogsController < ApplicationController
  def index
    @entries = Entry.all
    @blogs = Blog.all
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params["id"])
  end
  def create
    blog_params = params[:blog].permit(:image, :title, :short_contents, :main_contents)
    @blog = Blog.new(blog_params)
    respond_to do |format|
      if @blog.save
        format.html { redirect_to(entries_path(@blog), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @blog }
        format.js
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def edit
    @blog = Blog.find(params["id"])
  end
  def update
    blog_params = params[:blog].permit(:image, :title, :short_contents, :main_contents)
    @blog = Blog.find(params["id"])
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to(entries_path(@blog), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @blog }
        format.js
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def destroy
    blog = Blog.find(params["id"])
    @blog= Blog.destroy(blog)
    respond_to do |format|
      format.html { redirect_to(entries_path(@blog), notice: 'devise was successfully updated.' ) }
      format.json { render :show, status: :ok, location: @blog }
      format.js
    end
  end
end
