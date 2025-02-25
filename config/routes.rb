Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/new_director" , { :controller => "directors", :action => "new"})
  post("/update_director/:the_id" , { :controller => "directors", :action => "update" })
  get("/delete_director/:an_id" , {:controller => "directors" , :action => "delete"})

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/new_movie", { :controller => "movies", :action => "new"})
  get("/delete_movie/:an_id", { :controller => "movies", :action => "destroy"})
  post("/update_movie/:the_id", { :controller => "movies", :action => "update"})
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/new_actor" , { :controller => "actors", :action => "new"})
  post("/update_actor/:the_id" , { :controller => "actors", :action => "update" })
  get("/delete_actor/:an_id" , {:controller => "actors" , :action => "delete"})
end
