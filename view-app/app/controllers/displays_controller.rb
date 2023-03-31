class DisplaysController < ApplicationController

  def index
    uri = URI('http://localhost:3001/api/v1/samples') 
    # Replace with the URL of your API app
    response = Net::HTTP.get(uri) 
    @data = JSON.parse(response)
  end
end
