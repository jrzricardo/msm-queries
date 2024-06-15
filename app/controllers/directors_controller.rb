class DirectorsController < ApplicationController
  def index
  render({ :template => "director_templates/list"})
  end

  def show
    director_id = params.fetch("director_id")
    
    matching_records = Director.where({ :id => director_id})
    
    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details"})
  end

  def young
    director_ages = Director.all.order({ :dob => :desc})
    @youngest_director = director_ages.at(0)
    render({ :template => "director_templates/junior"})
  end

  def old
    director_ages = Director.all.order({ :dob => :asc})
    @eldest_director = director_ages.at(0)
    render({ :template => "director_templates/senior"})
  end
end
