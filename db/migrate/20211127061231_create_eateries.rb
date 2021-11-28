class CreateEateries < ActiveRecord::Migration[6.1]
  def change
    create_table :eateries do |t|
      t.string :name

      t.timestamps
    end
  end
end
