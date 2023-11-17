class CreateDoIts < ActiveRecord::Migration[7.0]
  def change
    create_table :do_its do |t|
      t.string :title

      t.timestamps
    end
  end
end
