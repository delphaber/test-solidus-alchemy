module MyAlchemy::UseSolidusLayoutDecorator
  def self.prepended(base)
    base.include(Spree::Core::ControllerHelpers::Common)
    base.include(Spree::Core::ControllerHelpers::Store)
    base.helper(Spree::BaseHelper)
    base.helper(Spree::StoreHelper)
  end

  Alchemy::BaseController.prepend self
end

