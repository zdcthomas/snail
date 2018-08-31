given = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

def snail(mat)
  traverse(mat,[])
end


def traverse(matrix, result)
  len = matrix.length
  while !matrix.empty?
    result << matrix.shift
    result << matrix.map{|array| array.pop}
    result << matrix.pop.reverse
    result << matrix.map{|array| array.shift}.reverse
    traverse(matrix, result)
  end
  result.flatten
end

print snail(given)

given = [
  [1,2,3,5],
  [4,2,5,3],
  [4,5,6,3],
  [1,4,2,5]
]
print snail(given)





require'pry';binding.pry