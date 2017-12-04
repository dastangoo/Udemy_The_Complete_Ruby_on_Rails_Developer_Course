class User
    attr_accessor :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
    def run
      puts "Hey I'm running"
    end
    def get_name
      @name
    end
    def set_name=(name)
      @name = name
    end
end

user = User.new("John", "john@example.com")
user1 = User.new("Jane", "jane@example.com")
user2 = User.new("James", "james@example.com")
# puts User.ancestors

# user.run
# user1.run
# user2.run
# puts user
# puts user1
# puts user2

# puts user.get_name
puts user.name
# user.set_name = "Eric"
user.name = "Eric"
puts user.name

puts "My user name is #{user.name} and my email #{user.email}"
user.name = "Jacob"
user.email = "jacob@example.com"
puts "My user name is #{user.name} and my email #{user.email}"
