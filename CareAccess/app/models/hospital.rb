class Hospital
  include Mongoid::Document
   
  field :name, type: String 
  field :practice_field, type: String
  field :location, type: String
  field :benefit, type: String 

  
  has_many :users 
  
  end 



# 	# Bring back an array of hospitals
#   def hospitals
#   	Hospital.find hospital_ids
#   end

# #   # Bring back an array of all hospital IDs
#   def hospital_ids
#   	self.user_hospitals.map(&:hospital_id)
#   end

# #   # Update hospital IDs for this user
#   def hospital_ids=(list)
#   	self.user_hospitals.destroy
#   	list.each do |hospital_id|
#   		unless hospital_id.blank?
#   			self.user_hospitals.create(hospital_id: hospital_id)
#   		end
#   	end
#   
# end
#---------------------------------------------------

#class user
 # belongs_to :user
  # has_many :playlist_tracks

#  has_many: tracks, through: playlist_tracks

# class Track
#has_many :playlist_tracks
#accepts_nested_attributes_for :playlist_tracks

#class playlist_track
# belongs_to :playlist_track
# belongs_to :track

#class playlist
# belongs_to :user
# has_many :playlist_tracks
#has_many :tracks, through: :playlist_tracks 

# --------------------------------------------------


# class Playlist
#   include Mongoid::Document
#   field :text, type: String

#   belongs_to :user
#   
#   has_many :playlist_tracks
#   accepts_nested_attributes_for :playlist_tracks
#   has_many :tracks, through: :playlist_tracks




# # The following 3 methods fake out the above has_many :through

# 	# Bring back an array of tracks
#   def tracks
#   	Track.find track_ids
#   end

#   # Bring back an array of all track IDs
#   def track_ids
#   	self.playlist_tracks.map(&:track_id)
#   end

#   # Update track IDs for this playlist
#   def track_ids=(list)
#   	self.playlist_tracks.destroy
#   	list.each do |trk_id|
#   		unless trk_id.blank?
#   			self.playlist_tracks.create(track_id: trk_id)
#   		end
#   	end
#   end
# end
#----------------------------------------------------

# (view) on playlists new.html.erb....
# <%= form_for @playlist do |if| %>
# <%= f.text_field :text,placeholder: "playlist" %>
# <%= f.collection_select :user_id, User.all, :id, :name %>



# on playlists_controller....
#def create...
# .permit (:text, :user_id, :track_ids => [])

# --------------------------------------------------
# To find a list of all tracks for a certain playlist:

# Track.find Playlist.last.playlist_tracks.map(&:track_id)

# ------------------------------------------------------------------------
# Here's how to find just the names of these 4 tracks by the mighty Inc:

# Track.find(Playlist.last.playlist_tracks.map(&:track_id)).map(&:text)
#--------------------------------------------------------------------------


