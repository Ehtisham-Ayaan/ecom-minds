class CreateSavermarts < ActiveRecord::Migration[6.1]
  def change
    create_table :savermarts do |t|
      t.string :display
      t.string :ram
      t.string :battery
      t.string :back_camera
      t.string :release_date
      t.string :sim_support
      t.string :phone_dimensions
      t.string :phone_weight
      t.string :operating_system
      t.string :processor
      t.string :gpu
      t.string :screen_size
      t.string :screen_resolution
      t.string :screen_type
      t.string :screen_protection
      t.string :front_camera
      t.string :front_flashlight
      t.string :front_video_recording
      t.string :back_flashlight
      t.string :back_video_recording
      t.string :internal_memory
      t.boolean :card_slot
      t.string :battery_type
      t.boolean :bluetooth
      t.boolean :G3
      t.boolean :G4
      t.boolean :G5
      t.boolean :radio
      t.boolean :wifi
      t.boolean :nfc
      t.timestamps
    end
  end
end
