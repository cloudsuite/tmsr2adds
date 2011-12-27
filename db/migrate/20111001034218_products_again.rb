class ProductsAgain < ActiveRecord::Migration
  def self.up
         drop_table :products
         create_table :products, :force => true do |t|
           t.integer  "category_id"
           t.string   "netsuite_id"
           t.string   "tms_part_no"
           t.string   "sammons_part_no"
           t.string   "sammons_category_match"
           t.string   "image_filename"
           t.string   "name"
           t.string   "description"
           t.text     "long_description"
           t.text     "xlong_description"
           t.string   "category_l1"
           t.string   "category_l2"
           t.string   "category_l3"
           t.integer  "latex_p"
           t.integer  "Tru_p"
           t.integer  "assembly_p"
           t.integer  "clinician_only_p"
           t.integer  "ship_by_truck_p"
           t.decimal  "price_clinic_list"
           t.decimal  "price_tru_blue"
           t.decimal  "price_deviation_floor"
           t.decimal  "price_corporate_2"
           t.decimal  "price_corporate_3"
           t.decimal  "price_dealer_1"
           t.decimal  "price_dealer_2"
           t.decimal  "price_dealer_3"
           t.timestamps
         end
  end

  def self.down
  end
end