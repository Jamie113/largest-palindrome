# Find the largest palindrome made from the product of two 3-digit numbers

results = []

(100..999).each do |x|
  (100..999).each do |y|
    results.push(x * y)
  end
end

# Method to check if a number is a palindrome
def palindrome?(number)
  number.to_s == number.to_s.reverse
end

# Sort products in descending order and find the largest palindrome
largest_palindrome = results.sort.reverse.find { |number| palindrome?(number) }

puts "The largest palindrome made from the product of two 3-digit numbers is #{largest_palindrome}."
