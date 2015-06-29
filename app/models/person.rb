class Person < ActiveRecord::Base
  def create
    Person.create(person_params)
  end
  private

  def person_params
    params.require(:people).permit(:image ,:name ,:description)
  end
  belongs_to :entry
  mount_uploader :image, ImageUploader
end
