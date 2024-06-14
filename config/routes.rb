Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {:controller => "directors" :action => "director_list"})

  get("/directors/:director_id", {:controller => "directors" :action => "director_details" })

  get("/directors/youngest", {:controller => "directors" :action => "youngest_director"})

  get("directors/eldest", {:controller => "directors" :action => "eldest_director"})

  get("/movies", {:controller => "movies" :action => "movie_list"})

  get("/movies/movie_id" {:controller => "movies" :action => "movie_details"})

  get("/actors", {:controller => "actors" :action => "actor_list"})

  get("/actors/:actor_id", {:controller => "actors" :action => "actor_details"})

end
