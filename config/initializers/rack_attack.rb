class Rack::Attack 
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

 # Allow an IP address to make 5 requests every 5 seconds  
  throttle('req/ip', limit: 5, period: 5) do |req|  
    req.ip  
  end
  
  # Throttle login attempts by email address
  # throttle("logins/email", limit: 5, period: 20.seconds) do |req|
  #  if req.path == '/users/sign_in' && req.post?
  #    req.params['email'].presence
  #  end  
  #end

  def remote_ip
    @remote_ip ||= (env['HTTP_CF_CONNECTING_IP'] ||
                    env['action_dispatch.remote_ip'] ||
                    ip).to_s
    end

    def allowed_ip?
      allowed_ips = ["127.0.0.1", "::1"]
      allowed_ips.include?(remote_ip)
    end
  end

   # Allow all local traffic 
  safelist('allow from localhost') do |req|
    req.allowed_ip?
  end

 end