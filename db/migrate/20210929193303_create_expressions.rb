# rubocop:disable all
class CreateExpressions < ActiveRecord::Migration[6.1]
  def change
    create_table :expressions do |t|
      t.string :firstInt
      t.string :operation
      t.string :secondInt
      t.string :result

      t.timestamps
    end
  end
end
