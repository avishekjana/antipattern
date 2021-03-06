class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  after_create :create_profile

  private

  def create_profile
  	_new_profile = Profile.create(:author_id=> self.id)
  end

end
