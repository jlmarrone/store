class Admin::ProductsController < Admin::CoreController
  actions :all, except: [:new, :create]

protected

  def collection
    end_of_association_chain.all
  end

end
