class Collaborator < ApplicationRecord
    belongs_to :project
    belongs_to :user

    def username
        User.find(self.user_id).name
    end

    def bio
        User.find(self.user_id).bio
    end

    def profile_pic
        User.find(self.user_id).profile_pic
    end
end
