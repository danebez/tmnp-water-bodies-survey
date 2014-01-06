class Feedback < ActiveRecord::Base

  belongs_to :respondent

  validate :duplicates

  attr_accessible :ecosystem_service_category,
                  :water_body_rank_1,
                  :water_body_rank_2,
                  :water_body_rank_3,
                  :water_body_rank_4,
                  :water_body_rank_5,
                  :water_body_rank_6,
                  :water_body_rank_7,
                  :water_body_rank_8,
                  :water_body_rank_9,
                  :water_body_rank_10,
                  :none

  attr_accessor :none

  validates :water_body_rank_1, :water_body_rank_2, :water_body_rank_3, :water_body_rank_4, :water_body_rank_5, :presence => true, :unless => Proc.new { |feedback| @none == "1" }
  validates :ecosystem_service_category, :length => {:maximum => 60}

  def duplicates
    water_bodies = [water_body_rank_1,
                    water_body_rank_2,
                    water_body_rank_3,
                    water_body_rank_4,
                    water_body_rank_5,
                    water_body_rank_6,
                    water_body_rank_7,
                    water_body_rank_8,
                    water_body_rank_9,
                    water_body_rank_10]

    result = water_bodies.detect{ |e| water_bodies.count(e) > 1 }
    if result && result != ''
      errors[:base] << 'You have selected ' + result.to_s + ' more than once.'
    end

  end

end