ActiveAdmin.register User do
  index do
    column :name
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :city
      f.input :phone
      f.input :discount_clubs
      f.input :roles
    end
    f.actions
  end
end
