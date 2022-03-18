class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    # validate :clickbaity

    # def clickbaity 
    #     found = %w(Won't Believe Secret Top [number] Guess).find do |word|
    #         title.include?(word)
    #     end
    #     unless found 
    #         errors.add(:title, "title isn't sufficiently clickbait-y")
    #     end
    # end
end
