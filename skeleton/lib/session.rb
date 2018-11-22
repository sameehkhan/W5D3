require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    session = Hash.new
    @cookie = JSON.parse(req.cookies['_rails_lite_app'])
    
    session[@cookie.keys[0]] = @cookie.values[0]

  

  end

  def [](key)
    @cookie[key]
  end

  def []=(key, val)
    @cookie[key] = val 
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
  end
end
