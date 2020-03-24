def valid_movie(movie)
if movie["adult"] ==false && movie["budget"]!=0 && movie["genres"].length != 0 && movie["revenue"]!=0 && movie["runtime"]!=0 
    return true
else
    return false
end
end