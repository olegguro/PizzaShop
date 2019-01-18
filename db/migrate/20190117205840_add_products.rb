class AddProducts < ActiveRecord::Migration[5.2]
  def change
  	Product.create ({
  	:title => 'Hawaiian', 
  	:description => 'This is Hawaiian pizza',
  	:price => 350,:size => 30,
  	:is_spicy => false,:is_veg => false,
  	:is_best_offer => false,
  	:path_to_image => '/images/hawaiian.png'})

  	Product.create ({
  	:title => 'Pepperoni', 
  	:description => 'Nice Pepperoni pizza',
  	:price => 450,:size => 30,
  	:is_spicy => false,
  	:is_veg => false,
  	:is_best_offer => true,
  	:path_to_image => '/images/pepperoni.png'})

  	Product.create ({
  	:title => 'Vegetarian', 
  	:description => 'Ammazing Vegetarian pizza',
  	:price => 400,
    :size => 30,
  	:is_spicy => false,
  	:is_veg => true,
  	:is_best_offer => false,
  	:path_to_image => '/images/veg.png'})

    Product.create ({
    :title => 'Margherita', 
    :description => 'Traditional Pizzas',
    :price => 380,
    :size => 30,
    :is_spicy => true,
    :is_veg => true,
    :is_best_offer => false,
    :path_to_image => '/images/margherita.png'})
 
    Product.create ({
    :title => 'Prawn Seafood', 
    :description => 'Szechuan Chilli Prawn Seafood Pizzas',
    :price => 400,
    :size => 30,
    :is_spicy => true,
    :is_veg => false,
    :is_best_offer => false,
    :path_to_image => '/images/prawn.png'}) 

    Product.create ({
    :title => 'Vietnamese Chilli Chicken', 
    :description => 'Vietnamese Chilli Chicken Chicken Pizzas',
    :price => 410,
    :size => 30,
    :is_spicy => true,
    :is_veg => false,
    :is_best_offer => false,
    :path_to_image => '/images/vietnamese.png'}) 
  end
end
