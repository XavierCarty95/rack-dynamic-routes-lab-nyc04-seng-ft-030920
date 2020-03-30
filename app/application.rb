class Application 
  
  @@items = [Items.new("Apples" , 4.23), Items.new("Oranges", 3.23)]
  def call(env)
  
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    
    req.path.match(/item/)
  
  end
  
  
  
  
  
end 