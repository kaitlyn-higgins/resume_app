class AddStudentIDtoSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :student_id, :integer
  end
end
