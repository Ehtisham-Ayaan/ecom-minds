Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['http://localhost:3000', 'https://ebay-listing.netlify.app']
    resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
