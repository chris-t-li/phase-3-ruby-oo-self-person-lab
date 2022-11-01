require "pry"

class Person 
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @happiness = 8
        @bank_account = 25
        @hygiene = 8
    end

    # allows person to change the value of their bank account
    def bank_account=(amount)
        @bank_account = amount
    end

    # allows person to change value of their happiness
    def happiness=(value)
        if(value > 10) 
            @happiness = 10
        elsif(value < 0)
            @happiness = 0
        else 
            @happiness = value
        end
    end

    # allows person to change hygiene
    def hygiene=(value)
        if(value > 10)
            @hygiene = 10
        elsif(value < 0)
            @hygiene = 0
        else 
            @hygiene = value
        end
    end

    # is person clean?
    def clean?
        self.hygiene > 7 ? true : false
    end

    # is person happy?
    def happy?
        self.happiness > 7 ? true : false
    end

    # getting paid a salary
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            ("blah " * 5).chop
        end
    end
end

stella = Person.new("Stella")


# binding.pry
# 0