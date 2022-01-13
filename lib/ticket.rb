class Ticket
    attr_accessor :name, :title, :price
    @@all = []
    def initialize(name, title)
        @name = name
        @title = title
        @price = 5.00
        @@all << self
    end 

    def self.all
        @@all
    end

    def self.find_tickets(movie){
        @@all.filter{|t| t.title == movie}.map{|t| "Name:#{t.name}, Price: #{t.price}"}
    }
    end

    def print_ticket
        puts "Name: #{self.name}"
        puts "Movie: #{self.movie}"
        puts "Price: #{self.price}"
        puts "-------------------------"
    end 

    def discount 
        self.price = self.price/2
        self.print_ticket
    end 
end