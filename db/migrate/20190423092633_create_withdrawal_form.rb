class CreateWithdrawalForm < SpreeExtension::Migration[5.2]
  def change
    create_table :withdrawal_forms do |t|
      t.string    :service_name
      t.string    :order_number
      t.datetime  :order_date
      t.string    :last_name
      t.string    :name
      t.string    :email
      t.string    :address

      t.timestamps
    end
    add_index :spree_withdrawal_forms, :order_number, unique: true
  end
end
