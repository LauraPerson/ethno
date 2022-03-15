class CreateRessources < ActiveRecord::Migration[6.0]
  def change
    create_table :ressources do |t|
      t.text :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
