class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :okta_id
      t.string :first_name
      t.string :email
      t.string :last_name
      t.timestamps
    end
  end
end
