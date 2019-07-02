class AddStudentIdToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :student_id, :integer
  end
end
