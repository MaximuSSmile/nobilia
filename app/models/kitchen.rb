class Kitchen < ActiveRecord::Base
    belongs_to :user

  has_many :foto_kitchens
  has_many :fkitchens





  accepts_nested_attributes_for :fkitchens,
                                reject_if: proc { |attributes| attributes['title'].blank? },
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['description'].blank? },
                                allow_destroy: true,
                                  reject_if: proc { |attributes| attributes['turn'].blank? },
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['model'].blank? },
                                allow_destroy: true,
                                  reject_if: proc { |attributes| attributes['material'].blank? },
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['manufacture'].blank? },
                                allow_destroy: true,
                                  reject_if: proc { |attributes| attributes['kitimage'].blank? },
                                allow_destroy: true

  #title:string desckription:text turn:integer model:string material:text manufacture:string


  validates :kitchen, :description, :kitchen_turn, presence: true



end
