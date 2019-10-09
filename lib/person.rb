class Person  

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8

    end


def happiness=(happiness_level)
     if happiness_level > 10 
         @happiness = 10 
     elsif happiness_level < 0 
         @happiness = 0
else @happiness = happiness_level
     end
    end


     def hygiene=(num)
        @hygiene = num 
        if @hygiene >10 # if instance method is this value
            @hygiene = 10 # set limits on  value
            elsif @hygiene < 0 # then if value is less 
                @hygiene = 0    # set to value
            end
            @hygiene # returns instance method
        end

def happy?
    @happiness > 7 ? true : false 
end

def clean? 
    @hygiene > 7 ? true : false 
end

def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"      

end

def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
end

def work_out
    self.happiness += 2
    self.hygiene -= 3
    '♪ another one bites the dust ♫' 
end

def call_friend(friend)# created arg that will b an instance
self.happiness += 3 # self is an instance calls this method increments up
friend.happiness += 3 # arg which is an instance calls the method increments up
"Hi #{friend.name}! It's #{self.name}. How are you?" # string interpolatertion of both instances
end

def start_conversation(person, topic)
if topic == "politics"
    person.happiness -= 2
    self.happiness -= 2
    'blah blah partisan blah lobbyist'
    elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        'blah blah sun blah rain'
    else 
        'blah blah blah blah blah'
    end
end




end
