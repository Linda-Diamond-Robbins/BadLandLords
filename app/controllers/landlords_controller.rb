class LandlordsController < ApplicationController

  def index 
    @landlords = Unirest.get("https://data.cityofchicago.org/resource/dip3-ud6z.json?$limit=1").body
    render 'index.html.erb'
  end
end