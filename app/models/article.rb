class Article
  include Mongoid::Document
  field :title, type: String
  field :text, type: String
  embeds_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :text, presence: true,
                    length: { maximum: 45 }
end
