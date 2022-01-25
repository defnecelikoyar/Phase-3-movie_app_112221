class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/" do
        "Hello World!"
    end

    get "/movies" do
        Movie.all.to_json
    end

    get "/movies/:id" do
        Movie.find(params[:id]).to_json
    end

end