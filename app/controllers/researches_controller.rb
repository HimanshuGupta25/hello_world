class ResearchesController < ApplicationController
  def index
    @researches = Research.all
  end

  def show
    @research = Research.find(params["id"])
  end
  def create
    research_params = params[:research].permit(:name, :contents, :main_contents)
    @research = Research.new(research_params)
    respond_to do |format|
      if @research.save
        format.html { redirect_to(entries_path(@research), notice: 'User was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @research }
        format.js
      else
        format.html { render :new }
        format.json { render json: @research.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def edit
    @research = Research.find(params["id"])
  end
  def update
    research_params = params[:research].permit(:name, :contents, :main_contents)
    @research = Research.find(params["id"])
    respond_to do |format|
      if @research.update(research_params)
        format.html { redirect_to(entries_path(@research), notice: 'User was successfully updated.' ) }
        format.json { render :show, status: :ok, location: @research }
        format.js
      else
        format.html { render :new }
        format.json { render json: @research.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end
  def destroy
    research = Research.find(params["id"])
    @research= Research.destroy(research)
    respond_to do |format|
      format.html { redirect_to(entries_path(@research), notice: 'User was successfully updated.' ) }
      format.json { render :show, status: :ok, location: @research }
      format.js
    end
  end
end
