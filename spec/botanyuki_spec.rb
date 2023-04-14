# frozen_string_literal: true

RSpec.describe Botanyuki do
  describe '.covariance' do
    let(:x_n) { [50, 50, 80, 70, 90] }
    let(:y_n) { [50, 70, 60, 90, 100] }

    subject { described_class.covariance(x_n, y_n) }

    it { is_expected.to eq 188 }
  end
end
