Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['http://localhost:8080', 'https://ebay-listing.netlify.app']
    resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
