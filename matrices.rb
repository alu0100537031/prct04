
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

############################################



#Subrutina que calcula el producto de dos matrices cuadradas



def productoMatriz(m,n)

	mostrarMatriz(m,"Matriz A")

	mostrarMatriz(n,"Matriz B")

	i,j,k=0,0,0

	aux=0

	c= [[0,0,0],[0,0,0],[0,0,0]]

	while k<3

#		puts "k: #{k}"

		while i<3

#			puts "\ti: #{i} => "

			while j<3

				aux += m[k][j] * n[j][i]

#				puts "(#{m[k][j]} x #{n[j][i]})+"

				j += 1

			end



			c[k][i]=aux

			aux=0

			j = 0

			i += 1



		end

		i = 0

		k += 1



	end

	return c

end

###########################################







##########      ########     #########  ###########

	puts "--- AxB ---"

	a=[[2,2,1],[3,0,0],[5,1,1]]

	b=[[1,0,1],[1,2,1],[1,1,0]]



	



#	puts "antes de iniciar la funcion"



	c= productoMatriz(a,b)

	mostrarMatriz(c, "Resultado")

##########      ########     #########  ###########
