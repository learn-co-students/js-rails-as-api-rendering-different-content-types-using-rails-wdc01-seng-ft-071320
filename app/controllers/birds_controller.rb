class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json:{birds:@birds,messages:["hello birds","goodbye birds"]
      
  }.to_json
  end
end
