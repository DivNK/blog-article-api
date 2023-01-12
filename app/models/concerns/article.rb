class Article < ApplicationRecord

    validates :title, presence: true, length: {minimum: 3, maximum: 80}
    validates :blog, presence: true, length: {maximum: 5000}    


end