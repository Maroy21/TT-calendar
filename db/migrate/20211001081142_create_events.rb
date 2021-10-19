# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
