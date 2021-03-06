# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121226022806) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cities", :force => true do |t|
    t.string "name"
    t.string "region"
    t.string "country"
  end

  create_table "discount_clubs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discount_clubs_users", :id => false, :force => true do |t|
    t.integer "discount_club_id"
    t.integer "user_id"
  end

  add_index "discount_clubs_users", ["discount_club_id"], :name => "index_discount_clubs_users_on_discount_club_id"
  add_index "discount_clubs_users", ["user_id"], :name => "index_discount_clubs_users_on_user_id"

  create_table "discount_clubs_venues", :force => true do |t|
    t.integer "discount_club_id"
    t.integer "venue_id"
  end

  add_index "discount_clubs_venues", ["discount_club_id"], :name => "index_discount_clubs_venues_on_discount_club_id"
  add_index "discount_clubs_venues", ["venue_id"], :name => "index_discount_clubs_venues_on_venue_id"

  create_table "discounts", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "discount_club_id"
    t.string   "conditions"
    t.integer  "price"
    t.string   "discount"
    t.string   "usage"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "discounts", ["discount_club_id"], :name => "index_discounts_on_discount_club_id"
  add_index "discounts", ["venue_id"], :name => "index_discounts_on_venue_id"

  create_table "parameters", :force => true do |t|
    t.text     "content"
    t.integer  "discount_club_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "user_id"
    t.integer  "stars"
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reviews", ["user_id"], :name => "index_reviews_on_user_id"
  add_index "reviews", ["venue_id"], :name => "index_reviews_on_venue_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "last_name"
    t.string   "city"
    t.integer  "phone"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "venues", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "venues", ["category_id"], :name => "index_venues_on_category_id"

  create_table "venues_cities", :id => false, :force => true do |t|
    t.integer "Venue_id"
    t.integer "City_id"
  end

  add_index "venues_cities", ["City_id"], :name => "index_venues_cities_on_City_id"
  add_index "venues_cities", ["Venue_id"], :name => "index_venues_cities_on_Venue_id"

end
