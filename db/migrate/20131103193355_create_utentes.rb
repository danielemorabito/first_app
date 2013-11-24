class CreateUtentes < ActiveRecord::Migration
  def self.up
    create_table :utentes do |t|
      t.string :nome
      t.string :cognome

      t.timestamps
    end
  end

  def self.down
    drop_table :utentes
  end
end
