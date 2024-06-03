Rails.application.routes.draw do
  get("/", :controller => "dice", :action => "home")
  get("/dice/:num_dice/:dice_sides", :controller => "dice", :action => "roller")
end
