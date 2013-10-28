class Admin::CoreController < InheritedResources::Base
  include InheritedResources::DSL

  before_filter :authenticate_admin!

  layout "admin"

  index! { |format| format.html { render :template => "admin/core/index" } }
  new!   { |format| format.html { render :template => "admin/core/update_view" } }
  edit!  { |format| format.html { render :template => "admin/core/update_view" } }

  create! do |success, failure|
    success.html { redirect_to collection_path }
    failure.html { render :template => "admin/core/update_view" }
  end

  update! do |success, failure|
    success.html { redirect_to collection_path }
    failure.html { render :template => "admin/core/update_view" }
  end

  destroy! { |format| format.html { redirect_to collection_path } }
end