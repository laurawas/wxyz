username = nil
password = nil
if Wxyz.const_defined?('SHOPIFY_USERNAME')
  username = SHOPIFY_USERNAME
  password = SHOPIFY_PASSWORD
else
  username = ENV['SHOPIFY_USERNAME']
  password = ENV['SHOPIFY_PASSWORD']
end

ShopifyAPI::Base.site = "https://#{username}:#{password}@wxyz-jewelry.myshopify.com/admin"
# raise "https://#{username}:#{password}@wxyz-jewelry.myshopify.com/admin"