class CreateEducationHistories < ActiveRecord::Migration
  def change
    create_table :education_histories do |t|
      t.string :place_of_study
      t.date :date_from
      t.date :date_to
      t.string :summary
      t.timestamps
    end
  end
end