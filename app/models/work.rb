class Work < ActiveRecord::Base
   has_many :users_works
   has_many :users, through: :users_works, dependent: :destroy
   validates :title, presence:true, length:{minimum:5}
   validates :position, presence:true
   validates :location, presence:true
   validates :description, presence:true, length:{minimum:20}
end
