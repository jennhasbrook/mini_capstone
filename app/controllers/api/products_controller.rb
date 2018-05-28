class Api::ProductsController < ApplicationController

  def product_action
    @products = Product.all
    render "product_view.json.jbuilder"
  end
  def first_product_action
     @product = Product.first
    render "first_product_view.json.jbuilder"
  end
  def second_product_action
     @product = Product.second
    render "second_product_view.json.jbuilder"
  end
  def third_product_action
     @product = Product.third
    render "third_product_view.json.jbuilder"
  end


end
