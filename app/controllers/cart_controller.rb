class CartController < ApplicationController
  def show
    @cart = current_cart
  end

  def edit
  end

  def update
  end

  def confirmation
  end


  def add_product
    order = current_cart_or_create
    product = Product.find(params[:product_id])
    if item = order.line_items.where(product: product).first
      item.quantity += 1
      item.save
    else
      puts order.inspect
      puts product.inspect
      order.line_items.create product: product, quantity: 1, 
      unit_price: product.price, item_name: product.name
      
      # o = order.line_items.new 
      # o.product_id =  product.id
      # o.quantity = 1
      # o.unit_price = product.price
      # o.item_name = product.name
      # o.save
    end
    redirect_back fallback_location: root_path
    flash[:notice] = "Dodano produkt do koszyka"
  end

  def remove_product
    order = current_cart
    product = Product.find(params[:product_id])
    item = order.line_items.where(product: product).first
    if item
      item.destroy
    end
    redirect_back fallback_location: root_path
    flash[:notice] = "Usunięto produkt z koszyka"
  end

end