class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :create

      t.timestamps null: false
    end
  end
end
