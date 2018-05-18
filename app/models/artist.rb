class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_create :set_default_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :events
  accepts_nested_attributes_for :events, allow_destroy: true
  before_create :set_default_role
  # after_create :send_welcome_email
  enum role: [:espectador ,:artist , :standupproductor , :admin,  :clienteempresarial ]

    def set_default_role
      self.role = :espectador
    end

    # def send_welcome_email
    #   UserNotifierMailer.welcome_user(self).deliver.now
    # end

end
