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
