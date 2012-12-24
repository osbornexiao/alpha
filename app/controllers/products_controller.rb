class ProductsController < ApplicationController
  def index
    @products = Product.all
    
    respond_to do |format|
      format.xml { render :xml => @products.to_xml }
      format.json { render :json => @productds.to_json }
      format.html
      
    end
    
  end

  def show
    
    @product = Product.find(params[:id])
    
    respond_to do |format|
      format.xml 
      format.json { render :json => { id: @product.id, brand_name:@product.brand_name, category: @product.category, type:@product.mtype, spec:@product.spec, }.to_json }
      format.html { @page_title = @product.brand_name }
    end
  
  end
 
  def edit
    @product = Product.find(params[:id])
    
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to products_path, :notice => "Product Was Update"
    else
      render "edit"
    end
    
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to products_path, :notice => "New Product Was Created"
    else
      render "new" 
    end
  end
  
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, :notice => "product was deleted"
  end
  
end
