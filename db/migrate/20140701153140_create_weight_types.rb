class CreateWeightTypes < ActiveRecord::Migration
  def change
    create_table :weight_types do |t|
       t.string :name
    end
  end
end
