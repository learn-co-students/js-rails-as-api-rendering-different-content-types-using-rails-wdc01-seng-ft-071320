class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    birds = Bird.all # no need of instance variable when rendering to json
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"  # plain text
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: {message: "Hashes of data will get converted to JSON"}
    # render json: ['As', 'well', 'as', 'arrays']
    # render json: @birds   # birds array
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }   # birds object
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json # to explicitly convert our array or hash to json
    render json: birds # no need of instance variable when rendering to json
  end
end
