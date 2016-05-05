require 'prime'
# Implement your procedural solution here!
def largest_palindrome_product
  998001.downto(10000) do |num|
    (return num) if (is_palindrome?(num) && !Prime.prime?(num))
  end
  nil
end

def is_palindrome?(num)
  num = num.to_s
  start = 0
  last = -1
  until (start == (num.size/2))
    return false if(num[start]!=num[last])
    start +=1
    last -= 1
  end
  return true
end