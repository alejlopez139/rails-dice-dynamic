Rails.application.routes.draw do
  get("/" , {:controller => "dice", :action =>"home"})
  get("/dice/2/6", {:controller => "dice", :action => "twodsix"})
end
