class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :channelname

      t.timestamps null: false
    end
  end
end
