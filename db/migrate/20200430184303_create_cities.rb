class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name

      add_reference :cities, :doctor, foreign_key: true
      add_reference :cities, :patient, foreign_key: true
      add_reference :cities, :appointment, foreign_key: true

      t.timestamps
    end
  end
end
