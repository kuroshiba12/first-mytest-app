Rails.application.routes.draw do
  # これが最優先で必要です！（一覧、詳細、作成、編集、削除のルートを作成します）
  resources :diaries

  get "static_pages/home"
  get "up" => "rails/health#show", as: :rails_health_check

  # トップページ（http://localhost:3000/）の設定
  root "diaries#index"
end
