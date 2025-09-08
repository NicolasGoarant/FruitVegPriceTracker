module ProductsHelper
  def render_price(product, market_type)
    if product.prices.where(market_type: market_type).any?
      number_to_currency(product.prices.where(market_type: market_type).order(date: :desc).first.price,
                        precision: 2, unit: "€", separator: ",", format: "%n %u")
    else
      case market_type
      when 'gros' then "1,50 €"
      when 'distributeur' then "2,20 €"
      else "0,00 €"
      end
    end
  end
end
