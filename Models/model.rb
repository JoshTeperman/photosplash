require 'pry'
class PhotoArray
  attr_reader :photo_array, :array

  def initialize(array)
    #Input: parsed Json data from API - array of hashes
    #Output: Array of Phot.new hashes. 
    @photo_array = []
    @array = array
    end

  def create_array
    @array.map { |hash| @photo_array << Photo.new(hash) }
    return @photo_array
  end

end

class Photo  
  attr_reader :id, :small_url, :full_url
  
  def initialize(hash)
    @id = [:id]
    @small_url = [:urls][:small]
    @full_url = [:urls][:full]
  end
end