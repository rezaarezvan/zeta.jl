using Plots

function ζ(z,limit=1000;point_ar = false)
    points = ComplexF64[0]
    result = 0
    for i in 1:limit
        result += (1/i)^z
        if point_ar
            push!(points,result)
        end
    end
    return result, points
end

ζ(2+5im)

z = 2+5im
result, points = ζ(z;point_ar = true)
plot((points),color=:blue,width=3, title="Zeta function spiral",framestyle= :origin,label="$z")
scatter!((points),color=:red, label="Points")