class Rack::Attack 
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

  # Allow an IP address to make 5 requests every 5 seconds  
  throttle('req/ip', limit: 5, period: 5) do |req|  
    req.ip  
  end

  def allowed_ip?
    allowed_ips = ["127.0.0.1", "::1"]
    allowed_ips.include?(remote_ip)
  end

end