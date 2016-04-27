class User < ActiveRecord::Base
  has_many :bras
  has_many :bra_sizes
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::Sha512
  end
end
