function recite(start, take)
    lyrics = []

    for n = 99 : -1 : 3
        push!(lyrics, string(n) * " bottles of beer on the wall, " *
                      string(n) * " bottles of beer.")

        push!(lyrics, "Take one down and pass it around, " *
                      string(n-1) * " bottles of beer on the wall.")

        push!(lyrics, "") # nothing? <-----------------??????
    end

    push!(lyrics, "2 bottles of beer on the wall, 2 bottles of beer.")
    push!(lyrics, "Take one down and pass it around, 1 bottle of beer on the wall.")
    push!(lyrics, "")
    push!(lyrics, "1 bottle of beer on the wall, 1 bottle of beer.")
    push!(lyrics, "Take it down and pass it around, no more bottles of beer on the wall.")
    push!(lyrics, "")
    push!(lyrics, "No more bottles of beer on the wall, no more bottles of beer.")
    push!(lyrics, "Go to the store and buy some more, 99 bottles of beer on the wall.")



    lyrics[302 - 3*(start + 2) + 2 : 302 - 3*(start + 2) + 3*take] # returned
end

#=
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function main()
    lines = recite(99, 100)
    for line in lines
        println(line)
    end
end
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
main()
=#
