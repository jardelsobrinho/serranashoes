class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.string :descricao, :limit => 50, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end
