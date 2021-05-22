class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_FirstName
      t.string :user_LastName
      t.string :password_digest
      t.string :user_ContactNo
      t.string :user_Type

      t.timestamps
    end
  end
end
