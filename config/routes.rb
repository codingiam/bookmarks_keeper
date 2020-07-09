require "sidekiq/web"

Sidekiq::Web.use Rack::Auth::Basic do |_, password|
  ActiveSupport::SecurityUtils.secure_compare(
    ::Digest::SHA256.hexdigest(password),
    ::Digest::SHA256.hexdigest(ENV["JOB_ADMIN_PASSWORD"]),
  )
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    # resources :masquerades, param: :username, only: [:show, :destroy]

    # root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  mount Sidekiq::Web, at: "/jobs"

  # get "/auth/github/callback", to: "sessions#create"
  # get "/sign_out", to: "sessions#destroy"

  get "/pages/*id" => "pages#show", as: :page, format: false

  %w(404 422 500).each do |status_code|
    get status_code, to: "errors#show", code: status_code
  end

  root to: "pages#show", id: "index"
end
