class TicketsController < Sinatra::Base
    get "/tickets" do
        Ticket.all.to_json(include: :movie)
    end

    get "/tickets/:id" do
        Ticket.find(params[:id]).to_json
    end

    delete "/tickets/:id" do
        ticket = Ticket.find(params[:id])
        ticket.destroy
        {message: "Ticket deleted."}.to_json
    end
end