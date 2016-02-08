class User < ActiveRecord::Base
has_secure_password
  validates :name,
            presence: true
  validates :phonenumber,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{name} #{phonenumber}"
  end

 
  has_one :profile
  has_many :projects, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy
  

  #has_many :friendships, dependent: :destroy
  #has_many :friends, :through => :friendships, dependent: :destroy
  #has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id", dependent: :destroy
  #has_many :inverse_friends, :through => :inverse_friendships, :source => :user, dependent: :destroy

  has_many :friendships, dependent: :destroy
  has_many :passive_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
 
  has_many :friends,-> { where(friendships: { approved: true}) }, :through => (:friendships && :passive_friendships), :source => (:friend && :user) 
  has_many :active_friends, -> { where(friendships: { approved: true}) }, :through => :friendships, :source => :friend 
  has_many :passive_friends, -> { where(friendships: { approved: true}) }, :through => :passive_friendships, :source => :user
  has_many :pending_friends, -> { where(friendships: { approved: false}) }, :through => :friendships, :source => :friend
  
  has_many :requested_friendships, -> { where(friendships: { approved: false}) }, :through => :passive_friendships, :source => :user
  has_many :friend_requests, -> { where(friendships: {approved: false}) }, :class_name => "Friendship", :foreign_key => "friend_id"
  
  #has_many :friend_gets, -> { where(friendships: {approved: false && approved: true}) }, :class_name => "Friendship", :foreign_key => "friend_id"
  
  def friends
    active_friends | passive_friends
  end

  has_many :projectmemberships,dependent: :destroy
  has_many :joined_projectmemberships, :class_name => "Projectmembership", :foreign_key => "pmember_id"
  has_many :joined_projects, :through => :joined_projectmemberships, :source => :project

  has_many :projtalks, dependent: :destroy
  has_many :talkresps, dependent: :destroy

  has_many :jobposts, dependent: :destroy
  has_many :jobcomments, dependent: :destroy

end



#has_many :friendships
#has_many :friends, through: :friendships, source: :user
#has_many :active_friends, -> { where(friendships: {approved: true, active: true}) }, :through => :friendships
#has_many :passive_friends, -> {where(friendships: {approved: true, active: false}) }, :through => :friendships