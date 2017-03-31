class CreateIgaBaselines < ActiveRecord::Migration[5.0]
  def change
    create_table :iga_baselines do |t|
      t.string :server_name
      t.string :ip
      t.string :os
      t.string :version_os
      t.string :qmgr
      t.string :version_mq
      t.string :broker
      t.string :version_broker
      t.text :comment

      t.timestamps
    end
  end
end
