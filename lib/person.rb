require 'pry'
class Person
  def initialize(name)
    # each new person gets a new name but gets the same instances listed below
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    # these are all instance variables accessible in all the methods in the class
  end
  attr_reader :name, :happiness, :hygiene
# we have happiness in attr_reader because we create the writer method for
 # below happiness and hygiene below
  attr_accessor :bank_account
  # these are instance methods and the reader and writer method are the same


def happiness=(num)
  # this is the writer method for happiness
  @happiness = num
  if @happiness < 0
    @happiness = 0
  elsif @happiness > 10
    @happiness = 10
  end
end
def hygiene=(num)
    # this is the writer method for hygiene
  @hygiene = num
  if @hygiene < 0
    @hygiene = 0
  elsif @hygiene > 10
    @hygiene= 10
  end
end
def happy?
  happiness > 7
  # here we are calling the value of the writer method of happiness and evaluating it
end
def clean?
  hygiene > 7
    # here we are calling the value of the writer method of hygiene and evaluating it
end
def get_paid(salary)
# specific numbers for salary is given in spec
  @bank_account += salary
  #bank_account = bank_account + salary
  # why use @bank_account vs bank_account?
  # because we are trying to change the instance variable and not the instance method.
  #  you cannot increment the instance method
  return "all about the benjamins"
end
def take_bath

  self.hygiene += 4
  #  it is incrementing the person classes instance variable for that given individual
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  # friend is an instance of the class and the specific friend is given
  # in the spec file 
self.happiness += 3
friend.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness -= 2
    friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    friend.happiness += 1
    return "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end

end
