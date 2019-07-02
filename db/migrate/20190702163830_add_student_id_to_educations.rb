class AddStudentIdToEducations < ActiveRecord::Migration[5.2]
  def change
    add_column :educations, :student_id, :integer
  end
end
