# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name, null: false

      t.boolean :personal, null: false, default: true

      t.timestamp :deleted_at

      t.timestamps null: false
    end
  end
end
