# frozen_string_literal: true

require_relative 'botanyuki/version'

require 'doguu'

module Botanyuki
  class << self
    def covariance(x_n, y_n)
      xy_mean = x_n.zip(y_n).map { |e| e[0] * e[1] }.sum / x_n.size.to_f
      x_mean = ::Doguu.arithmetic_mean(x_n)
      y_mean = ::Doguu.arithmetic_mean(y_n)
      answer = xy_mean - x_mean * y_mean

      answer.round(2)
    end

    def A(x_n, y_n)
      answer = covariance(x_n, y_n) / ::Doguu.variance(x_n)

      answer.round(2)
    end

    def B(x_n, y_n)
      x_mean = ::Doguu.arithmetic_mean(x_n)
      y_mean = ::Doguu.arithmetic_mean(y_n)
      a = A(x_n, y_n)
      answer = y_mean - a * x_mean

      answer.round(2)
    end
  end
end
