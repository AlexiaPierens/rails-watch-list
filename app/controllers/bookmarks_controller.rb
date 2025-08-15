class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmarks.all
  end

  def show
    @bookmarks = Bookmarks.find(params[:id])
  end

  def new
    @bookmarks = Bookmarks.new
  end

def create
  @bookmarks = Bookmarks.new(books_params)
  if @bookmarks.save
    redirect_to pet_path(@bookmarks)
  else
    render :new
  end
end

end
