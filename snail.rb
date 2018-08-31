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
  until matrix.empty?
    !matrix.empty? ? result << matrix.shift : nil
    !matrix.empty? ? result << matrix.map{|array| array.pop} : nil
    !matrix.empty? ? result << matrix.pop.reverse : nil
    !matrix.empty? ? result << matrix.map{|array| array.shift}.reverse : nil
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

