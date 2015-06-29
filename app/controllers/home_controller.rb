class HomeController < ApplicationController
  def index
    if current_user
      redirect_to entries_path
    end
    @entry = Entry.new
    @entries = Entry.all
    @researches = Research.all
    @technologies = Technology.all
    @paintings = Painting.all
    @members = Member.all
    @blogs =Blog.all
    @galleries = Gallery.all
  end
end