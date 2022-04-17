class CreateTodolists < ActiveRecord::Migration[6.1]
  def change
    create_table :todolists do |t|
      t.string :name
      t.boolean :deleted, default: :false
      t.boolean :done, default: :false

      t.timestamps
    end
  end
end
