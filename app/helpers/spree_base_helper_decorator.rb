Spree::BaseHelper.module_eval do

  def link_to_main_product_image(product)
    large_image_url = product.images.empty? ? "noimage/product.jpg" : 
      product.images.first.attachment.url(:large) 
    link_to product_image(product, :alt => product.name), large_image_url, {:title => title, :rel => 'colorbox_product_images'}
  end
  
  def link_to_image(image, title='')
    link_to image_tag(image.url(:mini)), image.url(:large), {:title => title, :rel => 'colorbox_product_images'}
  end

end
