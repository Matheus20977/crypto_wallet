module ApplicationHelper 
    # not used
    def locale
        I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"
    end

    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def ambiente_rails
        if Rails.env.development?
            "desenvolvimento"
        elsif Rails.env.production?
            "produção"
        else
            "teste"
        end
    end
    
end
