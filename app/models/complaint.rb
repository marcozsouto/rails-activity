class Complaint < ApplicationRecord
    belongs_to :user

    def self.search(search, search_company)
        if search and search_company
            complaint = Complaint.find_by(title: search, company: search_company)
            if complaint
                self.where(id: complaint)
            else
                Complaint.all
            end
        else
            Complaint.all
        end
    end
end
