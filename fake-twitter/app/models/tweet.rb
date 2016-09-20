class Tweet < ActiveRecord::Base
  belongs_to(:user)
  validates(:title, presence: {message: 'what are you doing?'})
  validates(:body, presence: true)
  validates(:location, length: {minimum: 2, allow_blank: true})

  validate(:check_title)

  validates(:user, presence: true)

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
