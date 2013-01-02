class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :skills
      t.string :experience
      t.string :objective

      t.timestamps
    end
  end
end
