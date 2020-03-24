require "net/http"
def valid_movie(url, movie)
    
if !url.path || !url.has_key?(path) || url.path == nil
    if movie["adult"] ==false && movie["budget"]!=0 && movie["genres"].length != 0 && movie["revenue"]!=0 && movie["runtime"]!=0 
        return true
    else
        return false
    end
end
end 
