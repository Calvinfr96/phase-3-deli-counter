# Write your code here.
katz_deli = []

def line(customer_queue)
    if customer_queue.size == 0
        puts "The line is currently empty."
    else
        string = "The line is currently:"
        customer_queue.each_with_index do |customer, index|
            string += " #{index + 1}. #{customer}"
        end
        puts string
    end
end

def take_a_number(customer_queue, new_customer) 
    customer_queue << new_customer
    new_customer_position = customer_queue.index(new_customer) + 1
    puts "Welcome, #{new_customer}. You are number #{new_customer_position} in line."
end

def now_serving(customer_queue)
    if customer_queue.size == 0
        puts "There is nobody waiting to be served!"
    else
        message = "Currently serving #{customer_queue[0]}."
        customer_queue.shift
        puts message
    end
end

take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

now_serving(katz_deli) #=> "Currently serving Ada."

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace."

line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz" 