ActiveAdmin.register DestinationPhoto do

    index do
        column :picture
        column :destination
        column :description, :sortable => false do |destination_photo|
          raw truncate(destination_photo.description, :length => 200)
        end
        column :created_at
        column :updated_at
        default_actions
    end

    show do |destination_photo|
      h1 "Image"
      li image_tag(destination_photo.picture.thumb_medium.url)
      h1 "City"
      div do
      	h5 destination_photo.destination.city
      end
    end
end
