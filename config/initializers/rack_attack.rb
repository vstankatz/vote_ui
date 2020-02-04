
class Rack::Attack
  throttle("requests per ip", limit: 300, period: 5.minutes, &:ip)

  throttle("limit logins per email", limit: 1, period: 1.minute) do |req|
    if req.path == "/signin" && req.post?
      if (req.params["email"].to_s.size > 0)
        req.params["email"].presence
      end
    end
  end

  throttle("limit signups", limit: 1, period: 1.minute) do |req|
    req.ip if req.path == "/users" && req.post?
  end
end
