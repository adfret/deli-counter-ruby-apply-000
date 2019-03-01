def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def line(katz_deli)
  message = "The line is currently: "
  if katz_deli.length == 0
    puts "The line is currently empty."
  elsif katz_deli.length > 0
    i = 0
    while i < katz_deli.length
      message = message + "#{i+1}. #{katz_deli[i]} "
      i+=1
    end
    puts message.rstrip
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  elsif katz_deli.length > 0
    puts "Currently serving #{katz_deli[0]}."
  end
katz_deli.shift

end
