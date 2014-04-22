class CreateParsefiles < ActiveRecord::Migration
  def self.up
    create_table :parsefiles do |t|
      t.string :filename

      t.timestamps
    end
  end

  def self.down
    drop_table :parsefiles
  end
end
