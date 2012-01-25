class CreateWxyzers < ActiveRecord::Migration
  def change
    create_table :wxyzers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :site
      t.text :inquiry

      t.timestamps
    end
  end
end
