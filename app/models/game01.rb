class Game01 < ApplicationRecord
    has_one_attached :rule
    has_one_attached :box
    has_many_attached :pieces

    validates :rule, :box, :pieces, presence: :true
    # validates :rule, blob: { content_type: ['application/pdf'], max_size: 3.megabytes }
    validates :box, :pieces, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], max_size: 3.megabytes }
end
