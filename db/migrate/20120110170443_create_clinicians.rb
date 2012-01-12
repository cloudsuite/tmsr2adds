class CreateClinicians < ActiveRecord::Migration
  def self.up
    create_table :clinicians do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :password
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :clinicians
  end
end
