module  Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end
class User
    include Destructable
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
    def self.identify_yourself
      puts "Hey, I am a class method"
    end
end

class Buyer < User
  def run
    puts "Hey I'm running and I'm in buyer class"
    
  end
end

class Seller < User
end

class Admin < User
end

buyer = Buyer.new("John Doe", "johndoe@example.com")
buyer.run
seller = Seller.new("Jane Doe", "janedoe@example.com")
seller.run
admin = Admin.new("Jerome Doe", "jeromedoe@example.com")
admin.run
puts Buyer.ancestors
User.identify_yourself

user = User.new("Jim", "jim@example.com")
user.destroy(user)