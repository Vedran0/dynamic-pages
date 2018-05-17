class PageLink < ApplicationRecord
  has_one :document, dependent: :destroy
  has_one :attachment, dependent: :destroy
  has_many :page_links
  # has_one :attachment, dependent: :destroy
  accepts_nested_attributes_for :document, :attachment, reject_if: :all_blank

  def has_related?
    document || attachment ? true : false
  end
end
