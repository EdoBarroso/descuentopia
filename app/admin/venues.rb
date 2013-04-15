ActiveAdmin.register Venue do
	form do |f|
    f.inputs "Venue Details" do
      f.input :name
      f.input :category
      f.input :discount_clubs
    end
    f.actions
  end
end
