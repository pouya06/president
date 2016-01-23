class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :hillary_clinton
      t.boolean :martin_omalley
      t.boolean :bernie_sanders
      t.boolean :jeb_bush
      t.boolean :ben_carson
      t.boolean :chris_christie
      t.boolean :ted_cruz
      t.boolean :carly_fiorina
      t.boolean :mike_huckabee
      t.boolean :john_kasich
      t.boolean :rand_paul
      t.boolean :marco_rubio
      t.boolean :rick_santorum
      t.boolean :donald_trump

      t.timestamps
    end
  end
end
