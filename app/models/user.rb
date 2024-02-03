class User < ApplicationRecord
  # enum role: [:user, :admin] Talvez seja melhor usar symbol ao invés de string.
  enum role: { user: 'user', admin: 'admin' }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
