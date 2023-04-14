# frozen_string_literal: true

require_relative 'botanyuki/version'

require 'doguu'

module Botanyuki
  class << self
    def covariance(x_n, y_n)
      xy_mean = x_n.zip(y_n).map { |e| e[0] * e[1] }.sum / x_n.size.to_f
      x_mean = ::Doguu.arithmetic_mean(x_n)
      y_mean = ::Doguu.arithmetic_mean(y_n)

      xy_mean - x_mean * y_mean
    end
  end
end
