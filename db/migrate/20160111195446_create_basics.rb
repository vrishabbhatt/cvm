class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string :full_name ,null: false
      t.integer :phone
      t.string :twitter
      t.string :relevant
      t.string :email , null: false 
      t.string :linkedin
      t.string :skype

      t.timestamps null: false
    end
  end
end
