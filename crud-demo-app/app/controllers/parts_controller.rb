class PartsController < ApplicationController

  def index
    @parts = Part.all
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)

    if @part.save
      redirect_to parts_path
    else
        render :new
    end
  end

  def edit
    @part = Part.find(params[:id])
  end

  def show
    @part = Part.find(params[:id])
  end

  def update
    @part = Part.find(params[:id])

    if @part.update(part_params)
      redirect_to parts_path
    else
      render :edit
    end
  end

  def destroy
    Part.destroy(params[:id])
    redirect_to parts_path
  end


  private

  def part_params
    params.require(:part).permit(:vendor, :description, :price)
  end
end
