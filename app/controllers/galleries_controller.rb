class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params["id"])
  end
  def create
    gallery_params = params[:gallery].permit(:url)
    @gallery = Gallery.new(gallery_params)
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to(entries_path(@gallery), notice: 'User was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @gallery  }
        format.js
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def edit
    @gallery = Gallery.find(params["id"])
  end
  def update
    gallery_params = params[:gallery].permit(:url)
    @gallery = Gallery.find(params["id"])
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to(entries_path(@gallery), notice: 'User was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @gallery }
        format.js
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def destroy
    gallery = Gallery.find(params["id"])
    @gallery= Gallery.destroy(gallery)
    respond_to do |format|
      format.html { redirect_to(entries_path(@gallery), notice: 'User was successfully updated.' ) }
      format.json { render :show, status: :ok, location: @gallery }
      format.js
    end
  end
end