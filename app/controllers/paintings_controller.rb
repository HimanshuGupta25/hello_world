
class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
  end

  def show
    @painting = Painting.find(params["id"])
    @painting.read("id")
  end
  def create
    painting_params = params[:painting].permit(:image)
    painting = Painting.create(painting_params)
    redirect_to(entries_path(painting), notice: 'User was successfully updated.' )
  end
  def edit
    @painting = Painting.find(params["id"])
  end
  def update
    painting_params = params[:painting].permit(:image)
    painting = Painting.find(params["id"])
    painting.update(painting_params)
    redirect_to(entries_path(painting), notice: 'User was successfully updated.' )
  end
  def destroy
    painting = Painting.find(params["id"])
    @painting= Painting.destroy(painting)
    redirect_to(entries_path, notice: 'User was successfully destroyed.')
  end
end