module ProductoPunto

export miproducto, miproducto2

function miproducto(a::Vector{Float64},b::Vector{Float64})
    if length(a) == length(b)
        suma = 0.0
        for i in 1:length(b)
        suma += a[i]*b[i]
        end
     return suma

    else
        #println("Las dimensiones no son buenas")
    #    error("Las dimensiones no son buenas")
        throw(DimensionMismatch("Las dimensiones no son buenas"))
    end
end

function miproducto2(a::Vector{Float64},b::Vector{Float64})
  if length(a) == length(b)
    suma = sum(a.*b)
    return suma
  else
      #println("Las dimensiones no son buenas")
      #    error("Las dimensiones no son buenas")
      throw(DimensionMismatch("Las dimensiones no son buenas"))
    end
end

end
