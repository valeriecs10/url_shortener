class CreateTagTopic < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_topics do |t|
      t.string :topic, null: false, unique: true
    end
  end
end
