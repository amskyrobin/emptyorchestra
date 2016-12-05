class Room

attr_reader :room, :physical_room


def initialize()

  @room = []  #should be called playlist - its where songs are held
  @physical_room = []
end

# def add_song(song)
#   @room << song
# end


# def get_artists_list()
#   result = []
#   for x in @room do
#     if !result.include?(x.artist) 
#       result << x.artist
#     end 
#   end
#   return result
# end
# end

def count()
  @physical_room.count
end

def create_room(guests)
  @physical_room.push(guests)
end

def full(guests)
  if @physical_room.count(guests) == 4
    physical_room.new
end

end
end

