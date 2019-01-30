class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :body
      t.references :lecture, foreign_key: true
      t.timestamps
    end
  end
end
