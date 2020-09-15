class CreateWebAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :web_accounts do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
