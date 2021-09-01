def superSum(f, n, k = 1)
  sum = 0
  for i in (k..n)
    sum += method(f).call(i)
    i += 1
  end 
  return sum 
end 

def superProduct(f, n, k = 1)
  product = 1
  for i in (k..n)
    product *= method(f).call(i)
    i += 1
  end
  return product 
end

def cube(x)
  return x*x*x
end

def rienmann(n)
  return ((n+Math.sin(n))/2)*(Math.PI/6)
end

puts("Testing superSum")
x = 3
puts("Case: n = #{x}, f = cube(x): #{superSum(x) == 36}")
x = 997
puts("Case: %d: %s" % [x, (smallestFactor(x) == 997).to_s])

puts("\nTesting smallestFactor")
x = 111
puts("Case: #{x}: #{smallestFactor(x) == 3}")
x = 997
puts("Case: %d: %s" % [x, (smallestFactor(x) == 997).to_s])

superSum(:rienmann, Math.PI/6, Math.PI)
superProduct(:cube, 3)

