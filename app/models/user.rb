class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable, :registerable and :activatable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username, :role, :role_id

  validates_uniqueness_of :email
  validates_uniqueness_of :username
  validates_presence_of :username

  belongs_to :role

  def admin?
    unless self.role.nil?
      self.role.name == "Admin"
    end
  end

  def super_admin?
    unless self.role.nil?
      self.role.name == "SuperAdmin"
    end
  end

  def viewer?
    unless self.role.nil?
      self.role.name == "Viewer"
    end
  end

end
