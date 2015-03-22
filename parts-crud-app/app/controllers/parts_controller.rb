class PartsController < ApplicationController

  def index
    @parts = Part.all
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)

    @part.save
    redirect_to part_path(@part)

  end

  def edit
    @part = Part.find(params[:id])
  end

  def show
    @part = Part.find(params[:id])
  end

  def update
    @part = Part.find(params[:id])
    part.update(part_params)
    redirect_to part_path(part)
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to parts_path(part)
  end

  private

  def part_params
    params.require(:parts).permit(:part_number, :description, :price)
  end
end
