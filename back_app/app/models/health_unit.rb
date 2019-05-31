class HealthUnit < ApplicationRecord

    validates :cnes, presence: true, numericality: true
    validates :name, presence: true, length: { maximum: 100 }
    validates :address, presence: true, length: { maximum: 100 }
    validates :neighborhood, presence: true, length: { maximum: 30 }
    validates :phone, length: { maximum: 25 }
    validates :latitude, :longitude, presence: true, length: { maximum: 20 }
    
    types = %w'Hospital Pharmacy SpecializedUnit BasicHealthUnit DiagnosisUnit
    EmergencyUnit MaternityClinic Polyclinic MentalHealthUnit FamilyHealthUnit
    OdontologyUnit'

    categories = %w'Public Private Filantropic'

    validates :type, inclusion: { in: types }
    validates :category, inclusion: { in: categories }

    # polymorphic association to comments
    has_many :comments, as: :page

    # subclasses's dinamyc scoping
    types.each do |type|
        scope type.underscore.to_sym, -> { where(type: type)}
    end

    # categories dinamyc scoping
    categories.each do |category|
        scope "#{category}Only".underscore.to_sym, -> { where(category: category) }
    end

    # Record Helper Methods
    def is_filantropic?
        category == 'Private'
    end

    def is_private?
        category == 'Private'
    end

    def is_public?
        category == 'Public'
    end

end
