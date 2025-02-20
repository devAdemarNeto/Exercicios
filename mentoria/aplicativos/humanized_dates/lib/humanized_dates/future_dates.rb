# lib/humanized_dates/future_dates.rb

module HumanizedDates
  module FutureDates
    def self.convert(time)
      difference = (time - Time.now).to_i  # Diferença em segundos

      return "agora mesmo" if difference < 60

      case difference
      when 60...3600
        minutes = (difference / 60.0).ceil  # Arredonda para cima
        "em #{minutes} minuto#{'s' if minutes > 1}"
      when 3600...86_400
        hours = (difference / 3600.0).ceil  # Arredonda para cima
        "em #{hours} hora#{'s' if hours > 1}"
      when 86_400...2_592_000
        days = difference / 86_400
        "em #{days} dia#{'s' if days > 1}"
      when 2_592_000...31_536_000
        months = difference / 2_592_000
        "em #{months} mês#{'es' if months > 1}"
      else
        years = difference / 31_536_000
        "em #{years} ano#{'s' if years > 1}"
      end
    end
  end
end
