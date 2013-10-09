#!/usr/bin/ruby 
puts "Suma de matrices"

def mostrarMatriz(a,b)
	n=0
	puts "#{b}:"
	while n<3
		puts a[n].join(" ")
		n = n+1
	end	
end


C=Array.new(3) { Array.new(3) }

A=[[2,0,1],[3,0,0],[5,1,1]]
B=[[1,0,1],[1,2,1],[1,1,0]]

mostrarMatriz(A,"Matriz A")
mostrarMatriz(B,"Matriz B")



for i in (0..2)
	for j in (0..2)
		C[i][j]=A[i][j]+B[i][j]

	end
end

     print "Resultado"
     puts
for i in (0..2)
     
     print "["
	for j in (0..2)
	       print C[i][j] 
               print " "
	       
	end
	print "] -> fila #{i+1}"
	puts	
end
