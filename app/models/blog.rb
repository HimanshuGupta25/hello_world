class Blog < ActiveRecord::Base
  validates_presence_of :title , :short_contents , :main_contents
  def create
    Blog.create(blog_params)
  end
  private

  def blog_params
    params.require(:blog).permit(:image ,:title ,:short_contents , :main_contents)
  end
  belongs_to :entry
  mount_uploader :image, BlogUploader
end
