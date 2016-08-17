class BookPricesController < ApplicationController
  before_action :set_book_price, only: [:edit, :update, :destroy]

  # GET /book_prices
  def index
    @book_prices = BookPrice.all
  end

  # GET /book_prices/new
  def new
    @book_price = BookPrice.new
  end

  # GET /book_prices/1/edit
  def edit
  end

  # POST /book_prices
  def create
    @book_price = BookPrice.new(book_price_params)

    respond_to do |format|
      if @book_price.save
        format.html { redirect_to book_prices_path, notice: 'Book price was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /book_prices/1
  def update
    respond_to do |format|
      if @book_price.update(book_price_params)
        format.html { redirect_to book_prices_path, notice: 'Book price was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /book_prices/1
  def destroy
    @book_price.destroy
    respond_to do |format|
      format.html { redirect_to book_prices_path, notice: 'Book price was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_price
      @book_price = BookPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_price_params
      params.require(:book_price).permit(:lc_start, :lc_end, :description, :price)
    end
end
