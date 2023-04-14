# frozen_string_literal: true

D = Steep::Diagnostic

target :app do
  check 'lib'
  signature 'sig'

  configure_code_diagnostics do |hash|
    hash[D::Ruby::UnknownConstant] = :information
  end
end
