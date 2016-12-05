require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../songs')
require_relative('../guests')

class RoomSpec < MiniTest::Test


# def setup

#   @room = Room.new

#   @room.add_song(Song.new("Taylor Swift", "Bad Blood"))
#   @room.add_song(Song.new("HAIM", "Forever"))
#   @room.add_song(Song.new("Grimes", "Oblivion"))
#   @room.add_song(Song.new("Grimes", "Genesis"))

# end

# def test_artists_lists
#   artists = @room.get_artists_list
#   assert_includes(artists, "Grimes")
#   assert_includes(artists, "HAIM")
#   assert_includes(artists, "Taylor Swift")
#   assert_equal(3, artists.count)
# end

# def test_get_songs_by_artist                  
#   artists = @room.get_songs_list
#   assert_equal("Grimes", "Oblivion", "Genesis",)
# end

# def test_can_add_songs
#   room = Room.new
#   room.add_song(Song.new("title", "artist"))
#   room.add_song(Song.new("title", "artist"))
#   room.add_song(Song.new("title", "artist"))
#   assert_equal(3, room.songs.count)
# end

# def test_can_add_songs
#   test_room = Room.new
#   test_room.add_song(Song.new("Taylor Swift", "Bad Blood"))
#   test_room.add_song(Song.new("HAIM", "Forever"))
#   test_room.add_song(Song.new("Grimes", "Oblivion"))
#   assert_equal(3, room.songs.count)
# end

def test_check_room_is_empty
  room = Room.new
  assert_equal(0, room.count)
end

def test_can_add_guests_to_rooms
  room = Room.new
  guests = Guests.new
  room.create_room(guests)
  assert_equal(1, room.count)
end

def test_can_add_guests_till_4
  room = Room.new
  guests = Guests.new
  room.create_room(guests)
  room.create_room(guests)
  room.create_room(guests)
  room.create_room(guests)
  assert_equal(4, room.count)
end

def test_is_room_full
  room = Room.new
  guests = Guests.new
  room.full(guests)
  assert_equal(4, room.count)
end
end
