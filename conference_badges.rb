require 'pry'

def badge_maker(name) 
    "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
    names_array.map{|name| "Hello, my name is #{name}."}
end

def assign_rooms(names_array)
    names_array.map.with_index(1){|name, room_num| "Hello, #{name}! You'll be assigned to room #{room_num}!"}
end

def printer(names_array)
intro = batch_badge_creator(names_array)
intro.each{|badge| puts badge}
rooms = assign_rooms(names_array)
rooms.each{|room| puts room}

end

puts printer(["Arel", "Carol"])
