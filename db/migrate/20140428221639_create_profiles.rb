class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :native_language
      t.string :learning_language
      t.string :name
      t.text :description
      t.string :image
      t.references :user, index: true

      t.timestamps
    end
  end
end
