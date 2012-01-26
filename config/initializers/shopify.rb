# ShopifyAPI::Session.setup({:api_key => 'c080117f9c8a121425a43fee4268c2b3', :secret => '4effc257c18dc5617e2f76aaff8e99d0'})
# 
# session = ShopifyAPI::Session.new("wxyz-jewelry.myshopify.com")

shopify_credentials = YAML::load(File.read(File.join(Rails.root, 'config', 'shopify.yml')))

ShopifyAPI::Base.site = "https://#{shopify_credentials['shopify']['username']}:#{shopify_credentials['shopify']['password']}@wxyz-jewelry.myshopify.com/admin"
