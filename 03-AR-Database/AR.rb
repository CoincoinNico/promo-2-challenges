class CreateBooks < ActiveRecord::Migration
  def up #modifier vers avant la BDD; ajouter un champ dans up, supprimer dans down
    create_table :books do |t|
      t.string  :name
      t.string  :author
      t.integer :year
      t.integer :pages
  end

  def down
  end

end