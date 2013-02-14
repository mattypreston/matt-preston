class CreateExperienceHistories < ActiveRecord::Migration
  def change
    create_table :experience_histories do |t|
      t.string :place_of_work
      t.string :position
      t.date :date_from
      t.date :date_to
      t.string :summary
      t.timestamps
    end
  end
end