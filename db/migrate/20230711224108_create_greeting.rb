# frozen_string_literal: true

class CreateGreeting < ActiveRecord::Migration[7.0]
  def change
    create_table :greetings do |t|
      t.string :content

      t.timestamps
    end
  end
end
