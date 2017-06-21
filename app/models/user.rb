class User < ApplicationRecord
  has_many :left_bs, dependent: :destroy
  has_many :right_bs, dependent: :destroy
  has_many :diaper_ones, dependent: :destroy
  has_many :diaper_twos, dependent: :destroy
end
