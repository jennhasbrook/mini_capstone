class Api::ProductsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]

  def index

    @products = Product.all
    name_search = params[:search]
    if name_search
      @products = Product.where("name LIKE ?",
     "%#{name_search}%")
    end

    if params[:price_sort]
      @products = @products.order(price: :asc)
    else
      @products = @products.order(id: :asc)
    end

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

    render 'index.json.jbuilder'
  end

  def show
    product_id = params[:id]
    @product = Product.find(product_id)
    render 'show.json.jbuilder'
  end

def create
   # if current_user && current_user.admin
     @product = Product.new(
       name: params[:name],
       price: params[:price],
       description: params[:description],
       supplier_id: params[:supplier_id]
     )

       if @product.save
         @image = Image.new(
           product_id: @product.id,
           url: "https://cdn.pixabay.com/photo/2012/04/26/18/56/smiley-42842_960_720.png")

         if @image.save
           render 'show.json.jbuilder'
         else
           render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
         end
       # else
       #   render json: {}, status: :unauthorized
       # end
    end
 end
  def update
    product_id = params[:id]
    @product = Product.find(product_id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
  
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    product_id = params[:id]
    @product = Product.find(product_id)
    @product.destroy
    render json: {message: "Product successfully destroyed"}

  end

end



