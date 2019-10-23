class CreateRaws < ActiveRecord::Migration[5.2]
  def change
    create_table :raws do |t|
      t.string :raw_name
      t.text :description

      t.timestamps
    end
  end
end
