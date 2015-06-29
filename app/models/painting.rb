class Painting < ActiveRecord::Base
  def create
    Painting.create(painting_params)
  end
  private

  def painting_params
    params.require(:painting).permit(:image)
  end
  belongs_to :entry
  mount_uploader :image, ImageUploader
end
