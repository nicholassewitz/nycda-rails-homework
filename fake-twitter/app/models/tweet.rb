class Tweet < ActiveRecord::Base
  belongs_to(:user)
  validates(:title, presence: {message: 'what are you doing?'})
  validates(:body, presence: true)
  validates(:location, length: {minimum: 2, allow_blank: true})

  validate(:check_title)

  validates(:user, presence: true)

  has_attached_file(:photo,
                    styles: {thumbnail: '100x100>', full: '300x300>'},
                    storage: :s3,
                    s3_region: 'us-east-1',
                    s3_credentials: {bucket: "fake-twitter",
                      access_key_id: "AKIAJ7ILH2A5CSCAYZ6Q",
                      secret_access_key: "yjmtYpDh5f/p16ryFMe8+Gp5YGMXbp5+zwOIu+3U"})
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def check_title
    if title == 'Cody'
      errors.add(:title, 'cannot be "Cody"')
    end
  end

  after_create(:send_create_push_notification)

  def send_create_push_notificaiton
    puts("Hey, a new tweet titled '#{title}' was posted!")
  end

end
