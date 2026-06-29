class CreateSuppliers < ActiveRecord::Migration[8.1]
  def change
    create_table :suppliers do |t|

      t.string    :name,         null: false
      t.string    :email,        null: false
      t.string    :phone_number
      t.string    :rfc
      t.string    :bank_name
      t.string    :bank_account
      t.string    :clabe
      t.decimal   :default_commission_rate, precision: 5, scale: 2  # % default del proveedor
      t.integer   :status,          default: 0   # enum: active, inactive
      t.string    :registered_by, null: false
      t.json      :metadata
      t.timestamps

    end
  end
end
