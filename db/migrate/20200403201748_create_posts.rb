class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :visitor, foreign_key: true
      t.string :TalentName
      t.string :TalentDescription

      t.timestamps
    end
  end
end
