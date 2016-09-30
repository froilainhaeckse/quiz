class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :lover
      t.boolean :answer

      t.timestamps null: false
    end
  end
end
