class ApplicationController < ActionController::Base

    protected

    def after_sign_in_path_for(resource)
      # ここにログイン後に遷移するページのパスを記述してください
      # 例: home_index_path
      reservations_path
    end

    
end
