class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :FullName
      t.string :Phone_no
      t.date :BirthDay

      t.timestamps
    end
  end
end
