Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "http://localhost:8081"
  
      resource "*",
        headers: :any,
        methods: [:get, :post, :patch, :head, :options, :put],
        credentials: true
    end
  end
  