class CreateRespondents < ActiveRecord::Migration
  def change
    create_table :respondents do |t|

      t.string :fullname, :null => false, :limit => 30
      t.string :email,    :null => false, :limit => 60

      t.timestamps
    end
  end
end