class CreateSuppilers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppilers do |t|
      t.string :suppiler_name
      t.string :phone
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
