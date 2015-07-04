class TechnologiesController < ApplicationController
    def index
      @technologies = Technology.all
    end

    def show
      @technology = Technology.find(params["id"])
    end
    def create
      technology_params = params[:technology].permit(:title, :contents)
      @technology = Technology.new(technology_params)
      respond_to do |format|
        if @technology.save
          format.html { redirect_to(entries_path(@technology), notice: 'devise was successfully updated.' ) }
          format.json { render :show, status: :ok, location: @technology }
          format.js
        else
          format.html { render :new }
          format.json { render json: @technology.errors, status: :unprocessable_entity }
          format.js
        end
      end
    end
    def edit
      @technology = Technology.find(params["id"])
    end
    def update
      technology_params = params[:technology].permit(:title, :contents)
      @technology = Technology.find(params["id"])
      respond_to do |format|
        if @technology.update(technology_params)
          format.html { redirect_to(entries_path(@technology), notice: 'devise was successfully updated.' ) }
          format.json { render :show, status: :ok, location: @technology }
          format.js
        else
          format.html { render :new }
          format.json { render json: @technology.errors, status: :unprocessable_entity }
          format.js
        end
      end
    end
    def destroy
      technology = Technology.find(params["id"])
      @technology= Technology.destroy(technology)
      respond_to do |format|
        format.html { redirect_to(entries_path(@technology), notice: 'devise was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @technology }
        format.js
      end
    end
  end