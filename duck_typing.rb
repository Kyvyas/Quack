# "If it walks like a duck and talks like a duck, it's probably a duck"

# Duck typing is a process in Object-oriented programming that refers to 
# the tendency of the language to be less concerned with the class of an object
# and more concerned with the method defined in it. In other words, Ruby does
# not care what the object is, but concentrates mainly on what it can do.

# This seems rather cruel, ignoring the object's sense of identity, but it is quite
# useful becuase we are able to write methods that apply to many different 
# classes without explicitly defining them within those classes. As long we have defined
# a method within a class, when this method is called by the later method, it will
# recognise its existence.

# In the example below, we have created two classes: DockingStation and Bike.
# We have also defined the method 'working?' in each of these classes. Subsequently,
# we defined a method called 'bike_is_working' outside those classes which included
# the method 'working?'. even though 'bike_is_working' is not defined within either of
# the classes, it is able to recognise that 'working?' can be called on both
# of the objects.

# In conclusion, Duck typing is a ruthless but efficient and dynamic way of programming. 
# Even though it is widely recognised as best practice in coding, it has some drawbacks
# in that it can cause errors when used incorrectly. 

# It is sometimes referred to as Duct Taping, meaning (very loosely) that it is a way of 
# making things work without creating a robust solution.

class DockingStation
  def release_bike
    release
  end

  def working?
    true               # => true
  end

end

class Bike
  def working?
    false        # => false
  end

end

def bike_is_working(bike)
  bike.working?            # => true, false
end

puts bike_is_working(DockingStation.new)  # => nil
puts bike_is_working(Bike.new)            # => nil

# >> true
# >> false
