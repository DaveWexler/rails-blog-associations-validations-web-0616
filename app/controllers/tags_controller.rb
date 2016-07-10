class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
  end

  def show
    @tag = Tag.find_by(params[:id])
  end

  def update
    @tag = Tag.find_by(params[:id])
    @tag.update(tag_params)
  end

  def edit
    @tag = Tag.find_by(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

end
