def initialize_app 
    puts 'Welcome to phase-3'

end 
def initialize_app 
    seed
    menu
end 

def menu
    puts "Welcome to Flatiron Movies"
    puts "Please choose an option:"
    puts "1. List all Movies"
    puts "2. List Tickte holder names"
    puts "3. Add ticket"
    puts "3. Find tickets"
    puts "5. Give Discount"
    puts "0. to exit"
    
    user_input = gets.strip

    case user_input
    when "1"
        movies = ['2001: A Space Odyssey', 'The Godfather', 'Citizen Kane', 'Raiders of the Lost Ark', 'In the mood for love', 'Seven Samurai']
        movies.each {|movie| puts movie }
        return_to_menu
    when "2"
        puts Ticket.all.map{|t|t.print_ticket}
        return_to_menu
    when "3"
        puts create_ticket
        return_to_menu
    when "4"
        puts "What movie are you looking for?"
        movie = gets.strip
        puts Ticket.find_tickets(movie)
        return_to_menu
    when "5"
        puts "What's your name?"
        name = gets.strip
        puts "What Movie?"
        title = gets.strip

        ticket = Ticket.all.find{|t| t.name == name && t.title == title}
        ticket.discount
        return_to_menu
    else 
        puts "goodbye"
    end 

end 

def create_ticket
    puts 'name'
    name = gets.strip
    puts "Title"
    title = gets.strip

    Ticket.new(name, title)
    menu
end 

def return_to_menu
    puts "Press any button to return to menu"
    gets.strip
    menu
end

def seed
    Ticket.new('rose', '2001: A space Odyssey')
    Ticket.new('ix', '2001: A space Odyssey')
    Ticket.new('bubbles', 'The Godfather')
    Ticket.new('ix', 'The Godfather')
    Ticket.new('Tony', 'The Godfather')
    Ticket.new('Azula', 'Raiders of the Lost Ark')
    Ticket.new('Ty Lee', 'Raiders of the Lost Ark')
    Ticket.new('May', 'Raiders of the Lost Ark')
    Ticket.new('Alyosha', 'Citizen Kane')
    Ticket.new('Ivan', 'Citizen Kane')
    Ticket.new('Pavel', 'Citizen Kane')
end 