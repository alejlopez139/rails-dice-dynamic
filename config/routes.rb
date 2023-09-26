Rails.application.routes.draw do
  get("/" , {:controller => "dice", :action =>"home"})
  get("/dice/2/6", {:controller => "dice", :action => "twodsix"})
  get("/dice/2/10", {:controller => "dice", :action => "two_ten"})
end
