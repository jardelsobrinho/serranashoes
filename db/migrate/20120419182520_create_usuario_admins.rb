class CreateUsuarioAdmins < ActiveRecord::Migration
  def self.up
    create_table :usuario_admins do |t|
      t.string :nomeusuario
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :usuario_admins
  end
end
