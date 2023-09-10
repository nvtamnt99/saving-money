class CreateMoneySavings < ActiveRecord::Migration[7.0]
  def change
    create_table :money_savings do |t|
      t.date :saving_date
      t.decimal :amount
      t.decimal :saving_amount

      t.timestamps
    end
  end
end
