class ShortenedUrl < ActiveRecord::Migration[5.1]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null:false
      t.string :short_url
      t.integer :user_id, null:false
      t.timestamp
    end
    
    add_index :shortened_urls, :user_id # maybe need long_url?
    add_index :shortened_urls, :short_url, unique: true
  end
end
