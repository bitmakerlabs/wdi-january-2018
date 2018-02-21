class ProductsController < ApplicationController

  # READ Collection
  def index
    @products = Product.all
  end

  # READ Single
  def show
    @product = Product.find(params[:id])
  end

  # CREATE - new form
  def new
    @product = Product.new
  end

  # CREATE - save in database
  def create
    @product = Product.new
    @product.name  = params[:product][:name]
    @product.price = params[:product][:price]

    if @product.save
      flash.notice = "Your product was saved"
      redirect_to products_path
    else
      render 'new'
    end
  end

  # UPDATE - edit form
  def edit
    @product = Product.find(params[:id])
  end

  # UPDATE - save in database
  def update
    @product = Product.find(params[:id])
    @product.name  = params[:product][:name]
    @product.price = params[:product][:price]

    if @product.save
      flash.notice = "Your product was saved"
      redirect_to products_path
    else
      render 'edit'
    end
  end

  # DELETE
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash.notice = "Your product was deleted"
    redirect_to products_path
  end

end
