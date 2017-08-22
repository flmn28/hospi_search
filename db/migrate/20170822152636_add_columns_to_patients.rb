class AddColumnsToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :family_name_kanji, :string
    add_column :patients, :first_name_kanji, :string
    add_column :patients, :family_name_kana, :string
    add_column :patients, :first_name_kana, :string
    add_column :patients, :gender, :boolean
    add_column :patients, :birthday, :date
    add_column :patients, :location_id, :integer
  end
end
