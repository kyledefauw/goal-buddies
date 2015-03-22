class QuotesController < ApplicationController
  def index
    @quote = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path
    else
      render :new
    end
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])

    if @quote.update(quote_params)
      redirect_to quote_path(@quote)
    else
      render :edit
    end
  end

  def destroy
    Quote.destroy(params[:id])

    redirect_to quote_path
  end
  private

  def quote_params
    params.require(:quote).permit(:author, :context)
  end
end
