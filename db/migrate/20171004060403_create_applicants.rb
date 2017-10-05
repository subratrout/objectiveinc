class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :cover_letter
      t.references :job, foreign_key: true

      t.timestamps
    end

    add_index :applicants, :email
  end
end
