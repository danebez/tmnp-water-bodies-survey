class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.references :respondent

      t.string :ecosystem_service_category, :null => false, :limit => 60
      t.string :water_body_rank_1,          :null => false, :limit => 40
      t.string :water_body_rank_2,          :null => false, :limit => 40
      t.string :water_body_rank_3,          :null => false, :limit => 40
      t.string :water_body_rank_4,          :null => false, :limit => 40
      t.string :water_body_rank_5,          :null => false, :limit => 40
      t.string :water_body_rank_6,          :null => true,  :limit => 40
      t.string :water_body_rank_7,          :null => true,  :limit => 40
      t.string :water_body_rank_8,          :null => true,  :limit => 40
      t.string :water_body_rank_9,          :null => true,  :limit => 40
      t.string :water_body_rank_10,         :null => true,  :limit => 40

      t.timestamps
    end
  end
end
