Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@XavierCarty95 
learn-co-students
/
rack-dynamic-routes-lab-nyc04-seng-ft-030920
30
04
 Code Issues 0 Pull requests 3 Actions Projects 0 Security Insights
rack-dynamic-routes-lab-nyc04-seng-ft-030920/app/application.rb / 
@jmburges jmburges adding solution
40c846a on Mar 7, 2019
23 lines (20 sloc)  511 Bytes
  
Code navigation is available!
Navigate your code with ease. Click on function and method calls to jump to their definitions or references in the same repository. Learn more

class Application

  @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item =@@items.find{|i| i.name == item_name}
        resp.write item.price
      else 
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.status=404
      resp.write "Route not found"
    end
    resp.finish
  end

end
