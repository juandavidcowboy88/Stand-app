class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :events

  enum role: [ :admin, :clienteempresarial, :Standup , :standupproductor, :espectador   ]

  before_create :set_default_role

    def set_default_role
      self.role = :espectador
    end


end
