# your code goes here
class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account(v)
        @bank_account = v
    end

    def happiness?(n)
        self.happiness = if n > 10
                        10
                        elsif n < 0
                            0
                        else
                            n
                        end
                    end
    def hygiene(n)
        self.hygiene = if n > 10
                        n
                    elsif n < 0
                        0
                    else
                        n
                    end
                end

    def clean?
        self.hygiene > 7
    end
    def happy?
        self.happiness > 7
    end
    def get_paid(n)
        self.bank_account += n
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "Another one bites the dust"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah"
        end
    end

end

tim = Person.new("tim")
puts tim
jen = Person.new("jen")
puts jen

# puts tim.bank_account(5)

puts tim.call_friend(jen)

puts tim.start_conversation(jen, "politics")