class Celebrity < ApplicationRecord
    validates :name, presence: true
      validates :name, length: { minimum: 2 }


         validates :age, presence: true

       validates :stared_in, presence: true
       validates :stared_in, length: { minimum:10 }


    validates :image, presence: true
end

  