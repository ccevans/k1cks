class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  ROLES = %w[registered admin banned]

  def role?(base_role)
        role.present? && ROLES.index(base_role.to_s) <= ROLES.index(role)
    end
end
