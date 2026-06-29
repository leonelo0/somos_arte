class CreateConsignmentProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :consignment_products do |t|

        t.references :supplier, null: false, foreign_key: true
        t.string     :sku,          null: false # generado internamente: SA-{supplier_id}-{seq}
        t.string     :name,         null: false
        t.string     :description
        t.string     :category
        t.string     :brand
        t.string     :unit
        t.decimal    :sale_price,    precision: 10, scale: 2, null: false  # precio del proveedor, inmutable
        t.decimal    :commission_rate, precision: 5, scale: 2, null: false # % comisión de este producto
        t.integer    :stock,         default: 0
        t.integer    :status,        default: 0   # enum: pending, approved, rejected, inactive
        t.string     :image_url
        t.string     :registered_by, null: false
        t.json       :metadata
        t.timestamps

    end
  end
end
