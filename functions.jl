function scale_to_domain(points, domain)
    mins = domain[:,1] # mins over all dimensions
    maxs = domain[:,2] # maxs over all dimensions
    scales = maxs .- mins
    scaled = deepcopy(points)
    for i in 1:size(points)[2]
        scaled[:,i] .*= scales[i]
        scaled[:,i] .+= mins[i]
    end
    return scaled
end