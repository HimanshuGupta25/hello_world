class Member < ActiveRecord::Base
  validates_presence_of :image , :name , :description
  def create
    Member.create(member_params)
  end
  private

  def member_params
    params.require(:member).permit(:image ,:name ,:description)
  end
  belongs_to :entry
  mount_uploader :image, ImageUploader
end
