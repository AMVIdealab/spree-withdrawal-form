class CreateWithdrawalForm < SpreeExtension::Migration[5.2]
  def change
    create_table :spree_withdrawal_forms do |t|
      t.string    :service_name
      t.string    :order_number
      t.datetime  :order_date
      t.string    :last_name
      t.string    :name
      t.string    :email
      t.string    :address

      t.timestamps
    end
  end
end
