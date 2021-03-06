def transpose(matrix)
 #switch the row and column size for our new matrix 
  new_col_sze =  matrix.size
  new_row_sze =  matrix[0].size
  new_matrix = []
  
#initialize our new matrix
  new_row_sze.times do
    new_matrix << Array.new(new_col_sze)
  end

#iterate through both our og matrix and new_matrix and switch values
  (0..new_row_sze - 1).each do |row_index|
    (0..new_col_sze - 1).each do |col_index|
      new_matrix[row_index][col_index] = matrix[col_index][row_index]
    end
  end
  new_matrix
end

matrix = ([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])


new_matrix = transpose(matrix)

p matrix
p new_matrix