class Hotel < ApplicationRecord
  belongs_to :user

  validates(:name, presence: {message: 'You must have a name.'}, uniqueness: true)
  validates(:location, presence: true)
  validates(:user, presence: true)


  has_attached_file(:photo,
                  styles: {thumbnail: '100x100>', full: '300x300>'},
                  storage: :s3,
                  s3_region: 'us-east-1',
                  s3_credentials: {bucket: 'S3 BUCKET',
                                   access_key_id: 'ACCESS KEY',
                                   secret_access_key: 'SECRET KEY'})
  validates_attachment_content_type(:photo, content_type: /\Aimage\/.+\Z/)



  after_create(:send_create_push_notification)

  def send_create_push_notification
    puts("Hey, a new hotel titled '#{name}' was posted!")
  end

  after_update(:send_update_push_notification)

  def send_update_push_notification
    puts("The hotel '#{name}' was updated!")
  end

  def self.search(query)
    where('name LIKE ? OR body LIKE ?',
          like(query),
          like(query))
  end

  def self.like(condition)
    "%#{condition}%"
  end
  
end
