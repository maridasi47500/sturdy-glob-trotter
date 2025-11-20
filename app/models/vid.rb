class Vid < ApplicationRecord
 belongs_to :user
 belongs_to :device
 belongs_to :city
 belongs_to :activity
def myvid=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
write_attribute(:myvid, uploaded_io.original_filename)
end
def myvid
read_attribute(:myvid)
end


end
