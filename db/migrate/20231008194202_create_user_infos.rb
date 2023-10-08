class CreateUserInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :user_infos do |t|
      t.string :username, null: false, index: { unique: true, name: 'unique_usernames' }
      t.string :password, null: false
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.boolean :admin, default: false
      t.timestamps
    end

    UserInfo.create(username: 'admin', password: 'admin1', email: 'mpa102@sfu.ca', admin: true)
  end
end
