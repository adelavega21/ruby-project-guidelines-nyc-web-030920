
require "net/http"
def valid_movie(movie)
    if movie["adult"] !=nil && movie["budget"]!=nil && movie["genres"] != nil && movie["revenue"]!=nil && movie["runtime"]!=nil
    if movie["adult"] ==false && movie["budget"]!=0 && movie["genres"].length != 0 && movie["revenue"]!=0 && movie["runtime"]!=0 
        return true
    else
        return false
    end
end 
end 

