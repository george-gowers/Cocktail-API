class Cocktail < ApplicationRecord

  include PgSearch::Model
  # pg_search_scope :search_by_name,
  #   against: [ :name ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }

  # pg_search_scope :search_by_name, against: :name

  # pg_search_scope :search_by_name,
  #                 against: :name,
  #                 using: {
  #                   tsearch: {dictionary: "english"}
  #                 }

   pg_search_scope :search_by_name,
                  against: :name,
                  using: {
                    tsearch: {normalization: 2, prefix: true}
                  }
end
