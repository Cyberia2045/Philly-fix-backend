class CreateDispatchers < ActiveRecord::Migration[5.1]
  def change
    create_table :dispatchers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :department

      t.timestamps
    end
  end
end
