class EntriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @entries = Entry.all
    @researches = Research.all
    @technologies = Technology.all
    @paintings = Painting.all
    @members = Member.all
    @blogs =Blog.all
    @galleries = Gallery.all
    @entry =Entry.new
    @blog = Blog.new
    @research = Research.new
    @technology = Technology.new
    @member = Member.new
    @gallery = Gallery.new
  end

  def show
    @entry = Entry.all
  end

  def create
    entry_params = params[:entry].permit(:title, :link)
    @entry = Entry.new(entry_params)
    respond_to do |format|
      if @entry.save
        format.html { redirect_to(entries_path(@entry), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @entry }
        format.js
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
        format.js
      end
    end
    end

  def edit
    @entry = Entry.find(params["id"])
  end
  def update
    entry_params = params[:entry].permit(:title, :link)
    @entry = Entry.find(params["id"])
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to(entries_path(@entry), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @entry }
        format.js
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
        format.js
      end
    end

  end
  def destroy
    entry = Entry.find(params["id"])
    @entry= Entry.destroy(entry)
    respond_to do |format|
        format.html { redirect_to(entries_path(@entry), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @entry }
        format.js
    end
  end
  private
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "secret"
    end
  end
  end


