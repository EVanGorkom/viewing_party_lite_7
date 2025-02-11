# frozen_string_literal: true

class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :movie

      t.timestamps
    end
  end
end
