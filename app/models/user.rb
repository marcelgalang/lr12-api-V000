class User < ApplicationRecord
  has_many :left_bs, dependent: :destroy
  has_many :right_bs, dependent: :destroy
  has_many :one_diapers, dependent: :destroy
  has_many :two_diapers, dependent: :destroy
end