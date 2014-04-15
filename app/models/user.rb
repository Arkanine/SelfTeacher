class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email, :name, message: 'Поле має бути заповненим!'
  validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: 'Неправильний формат email!' }, uniqueness: true
  validates :name, length: { maximum: 30 }, uniqueness: true
  validates_length_of :password, within: 5..99,
                      too_long: 'Пароль надто довгий!',
                      too_short: 'Мінімум 5 символів!'

  has_many :comments, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :results
end
