class ProductsController < ApplicationController
  def who_bought
    @product = Product.find(params[:id])
    respond_to do |format|
      format.atom
      format.xml { render :xml => @product }
    end
  end

  def sign
    if request.post?
      @pro = Sign.create(params[:sign])
      redirect_to products_login_path
      
    else
   
      @pro=Sign.new
    end
  end
  
  def login
    if request.post?
      @pro=Sign.where(["name=? and password=?",params[:sign][:name],params[:sign][:password]]).first
      redirect_to products_menu_path
    else
      @pro=Sign.new
    end
  end

  def menu
  end
  
  def new
    if request.post?
      @pro = Product.create(params[:product])
      if @pro.errors.empty?
        redirect_to products_index_path
      else
        @pro=Product.new
      
      end
    else
      @pro=Product.new
    end
  
  end

  def index
    @pro=Product.all
    

  end
   
  def edit
    @pro=Product.find(params[:id])
  end

  def show
    @pro=Product.find(params[:id])
  end
  def update
    @pro = Product.update(params[:id], params[:product])
    redirect_to :action => "index"
  end
end

