class Post < ActiveRecord::Base

  validates :title, presence: true

  validates :content, length: {minimum: 250}

  validates :summary, length: {maximum: 250}

  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

  validate :clickbait




  def clickbait
    if !["Won't Believe", "Secret", "Top", "Guess"].any? {|phrase| title.to_s.include?(phrase)}
      errors.add(:title, "Likely not clickbaity")
    end
  end

end
