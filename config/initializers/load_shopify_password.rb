if Rails.env.development?
  shopify_credentials = YAML::load(File.read(File.join(Rails.root, 'config', 'shopify.yml')))['shopify']

  SHOPIFY_USERNAME = shopify_credentials['username']
  SHOPIFY_PASSWORD = shopify_credentials['password']
end