class Blog < ActiveRecord::Base
  validates_presence_of :title , :short_contents , :main_contents
  Blog.all.order("id desc").limit(1).each do |d|

  end
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
