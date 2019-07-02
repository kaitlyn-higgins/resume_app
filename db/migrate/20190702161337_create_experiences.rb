class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :start_date
      t.string :end_date
      t.string :title
      t.string :company_name
      t.text :details

      t.timestamps
    end
  end
end
