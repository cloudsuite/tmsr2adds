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

ActiveRecord::Schema.define(:version => 20120812191955) do

  create_table "accessories", :force => true do |t|
    t.integer  "category_id"
    t.integer  "product_type_id"
    t.integer  "base_product_id"
    t.string   "base_product_tms_no"
    t.string   "tms_part_no"
    t.string   "netsuite_item_no"
    t.string   "sammons_part_no"
    t.string   "sammons_category_match"
    t.integer  "is_accessory_p"
    t.integer  "accessory_for"
    t.string   "image_filename"
    t.string   "name"
    t.text     "description"
    t.text     "long_description"
    t.text     "product_line_description"
    t.string   "sale_units"
    t.string   "category_l1"
    t.string   "category_l2"
    t.string   "category_l3"
    t.integer  "latex_p"
    t.integer  "tru_p"
    t.integer  "assembly_p"
    t.integer  "clinician_only_p"
    t.integer  "msds_p"
    t.string   "mds_filename"
    t.integer  "more_info_p"
    t.string   "more_info_filename"
    t.string   "method_of_shipment"
    t.decimal  "price_clinic_list"
    t.decimal  "price_tru_blue"
    t.decimal  "price_deviation_floor"
    t.decimal  "price_corporate_2"
    t.decimal  "price_corporate_3"
    t.decimal  "price_dealer_1"
    t.decimal  "price_dealer_2"
    t.decimal  "price_dealer_3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accessories_product_types", :id => false, :force => true do |t|
    t.integer "accessory_id"
    t.integer "product_type_id"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "administrators", :force => true do |t|
    t.string   "type"
    t.integer  "tm_customer_id"
    t.integer  "netsuite_customer_id"
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email",                                 :default => "", :null => false
    t.string   "phone"
    t.string   "extension"
    t.string   "role"
    t.integer  "clinic_id"
    t.integer  "clinic_tm_id"
    t.string   "clinic_name"
    t.integer  "wants_n_catelogs"
    t.string   "password"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "base_products", :force => true do |t|
    t.integer  "category_id"
    t.integer  "tms_product_no"
    t.string   "image_filename"
    t.string   "name"
    t.text     "description"
    t.text     "long_description"
    t.string   "comes_in"
    t.string   "comes_in2"
    t.string   "sale_units"
    t.string   "category_l1"
    t.string   "category_l2"
    t.string   "category_l3"
    t.integer  "latex_p"
    t.integer  "tru_p"
    t.integer  "assembly_p"
    t.integer  "clinician_only_p"
    t.integer  "msds_p"
    t.string   "msds_filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "level"
    t.string   "tree_path"
    t.string   "name"
    t.string   "color"
    t.integer  "list_order"
    t.string   "category_type"
    t.string   "title"
    t.string   "description"
    t.string   "image_filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["id"], :name => "index_categories_on_id"
  add_index "categories", ["name"], :name => "index_categories_on_name"
  add_index "categories", ["parent_id"], :name => "index_categories_on_parent_id"

  create_table "clinicians", :force => true do |t|
    t.integer  "clinic_id"
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "role"
    t.string   "password"
    t.string   "plain_text_password"
    t.string   "encrypted_password"
    t.string   "email"
    t.string   "work_phone_main"
    t.string   "work_phone_extension"
    t.string   "work_phone_direct"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinics", :force => true do |t|
    t.integer  "netsuite_customer_id"
    t.integer  "tm_customer_id"
    t.string   "name"
    t.string   "category"
    t.integer  "alpha"
    t.integer  "beta"
    t.integer  "administrator_id"
    t.string   "administrator_name"
    t.string   "administrator_email"
    t.string   "administrator_password"
    t.string   "administrator_phone"
    t.string   "sales_rep"
    t.string   "primary_contact"
    t.string   "phone"
    t.string   "extension"
    t.string   "email"
    t.string   "fax"
    t.string   "alternate_contact"
    t.string   "office_phone"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "shipping_address_composite"
    t.string   "billing_address_composite"
    t.string   "terms"
    t.string   "price_schedule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "logomark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "old_users", :force => true do |t|
    t.integer  "tm_customer_id"
    t.integer  "netsuite_customer_id"
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.string   "extension"
    t.string   "role"
    t.boolean  "owner"
    t.boolean  "administrator"
    t.boolean  "clinician"
    t.integer  "clinic_id"
    t.integer  "clinic_tm_id"
    t.string   "clinic_name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "price_schedule"
    t.integer  "wants_n_catelogs"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_lines", :force => true do |t|
    t.integer  "manufacturer_id"
    t.string   "name"
    t.string   "logomark"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_sets", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", :force => true do |t|
    t.integer  "product_line_id"
    t.string   "category_l1"
    t.string   "category_l2"
    t.string   "category_l3"
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.string   "image_filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "type"
    t.integer  "show_in_llc"
    t.integer  "category_id"
    t.integer  "product_type_id"
    t.integer  "product_line_id"
    t.integer  "accessory_of_id"
    t.integer  "product_set_id"
    t.integer  "base_product_id"
    t.string   "base_product_tms_no"
    t.string   "tms_part_no"
    t.string   "netsuite_item_no"
    t.string   "sammons_part_no"
    t.string   "sammons_category_match"
    t.integer  "is_accessory_p"
    t.integer  "accessory_for"
    t.string   "image_filename"
    t.string   "name"
    t.text     "web_description"
    t.text     "description"
    t.text     "long_description"
    t.text     "product_line_description"
    t.string   "sale_units"
    t.string   "category_l1"
    t.string   "category_l2"
    t.string   "category_l3"
    t.integer  "latex_p"
    t.integer  "tru_p"
    t.integer  "assembly_p"
    t.integer  "clinician_only_p"
    t.integer  "available_to_dealers_p"
    t.integer  "msds_p"
    t.string   "mds_filename"
    t.integer  "more_info_p"
    t.string   "more_info_filename"
    t.string   "method_of_shipment"
    t.decimal  "price_clinic_list"
    t.decimal  "price_tru_blue"
    t.decimal  "price_deviation_floor"
    t.decimal  "price_corporate_2"
    t.decimal  "price_corporate_3"
    t.decimal  "price_dealer_1"
    t.decimal  "price_dealer_2"
    t.decimal  "price_dealer_3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["base_product_id"], :name => "index_products_on_base_product_id"
  add_index "products", ["category_id"], :name => "index_products_on_category_id"
  add_index "products", ["id"], :name => "index_products_on_id"

  create_table "requests", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "extension"
    t.string   "clinic_name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "number_of_catelogs_requested"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "type"
    t.integer  "tm_customer_id"
    t.integer  "netsuite_customer_id"
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email",                                 :default => "", :null => false
    t.string   "phone"
    t.string   "extension"
    t.string   "role"
    t.integer  "clinic_id"
    t.integer  "clinic_tm_id"
    t.string   "clinic_name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "price_schedule"
    t.integer  "wants_n_catelogs"
    t.string   "password"
    t.string   "plain_text_password"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
