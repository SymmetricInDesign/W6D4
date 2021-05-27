class CatRentalRequest < ApplicationRecord
    validates :status, presence: true, inclusion: { in: ["PENDING", "APPROVED", "DENIED"]}
    validates :cat_id, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true


    belongs_to :cat,
        class_name: :Cat,
        foreign_key: :cat_id,
        dependent: :destroy

    def overlapping_requests
        CatRentalRequest.find_by(cat_id: self.cat_id).where('id != self.id AND end_date >= self.start_date OR start_date <= self.end_date')
    end

    def overlapping_approved_requests
        overlapping_requests.where(status: "APPROVED")
    end

    def does_not_overlap_approved_request
        !overlapping_approved_requests.any? { |r| r.exists? }
    end
end
