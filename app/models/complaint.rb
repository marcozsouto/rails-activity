class Complaint < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: { in: 5..25 }
    validates :text, presence: true, length: { in: 15..1280 }
    validates :category, presence: true, length: { in: 4..25}
    validates :company, presence: true


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
