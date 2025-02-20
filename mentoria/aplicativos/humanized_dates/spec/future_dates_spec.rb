# spec/future_dates_spec.rb
require "rspec"
require_relative "../lib/humanized_dates/future_dates"

RSpec.describe HumanizedDates::FutureDates do
  describe ".convert" do
    it "retorna 'agora mesmo' para menos de 60 segundos" do
      expect(HumanizedDates::FutureDates.convert(Time.now + 30)).to eq("agora mesmo")
    end

    it "retorna tempo em minutos" do
      expect(HumanizedDates::FutureDates.convert(Time.now + 120)).to eq("em 2 minutos")
    end

    it "retorna tempo em horas" do
      expect(HumanizedDates::FutureDates.convert(Time.now + 7200)).to eq("em 2 horas")
    end

    it "retorna tempo em dias" do
      expect(HumanizedDates::FutureDates.convert(Time.now + 90_000)).to eq("em 1 dia")
    end

    it "retorna tempo em meses" do
      expect(HumanizedDates::FutureDates.convert(Time.now + 3_600_000)).to eq("em 1 mês")
    end

    it "retorna tempo em anos" do
      expect(HumanizedDates::FutureDates.convert(Time.now + 100_000_000)).to eq("em 3 anos")
    end
  end
end
