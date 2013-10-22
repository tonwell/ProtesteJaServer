class CreateProtestos < ActiveRecord::Migration
  def change
    create_table :protestos do |t|
      t.string :pessoa
      t.string :descricao

      t.timestamps
    end
  end
end
