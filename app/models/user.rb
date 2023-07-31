class User < ApplicationRecord
    before_save :downcase_gender

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
    has_many :members
    has_many :tickets

    validates :name, presence: true, length: { minimum: 2 },uniqueness: true
    validates :contact_number, length: { is: 10 }, uniqueness: true
    validates :gender, inclusion: { in: ['male', 'female', 'other'], message: "must be male, female, or other" }
    
    scope :passengers, -> { where(role: 'Passenger') }
    private

    def downcase_gender
      self.gender = gender.downcase if gender.present?
    end
end
