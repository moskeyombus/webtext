class User < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable,
         :trackable, :validatable, :lockable, :timeoutable

  def email_required?
    false
  end

  def superadmin?
    self.superadmin
  end

end
