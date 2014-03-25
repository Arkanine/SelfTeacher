class Track < ActiveRecord::Base
  mount_uploader :sound, SoundUploader
end
