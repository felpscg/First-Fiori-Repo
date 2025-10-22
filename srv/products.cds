using { products as db } from '../db/schema';

service CatalogService {
  entity Products as projection on db.Products;
  entity Suppliers as projection on db.Suppliers;
  
  @readonly entity AnalyticsReport as projection on db.AnalyticsReport {
    *,
    stockValue,
    averagePrice,
    productAvailability,
    stockTrend,
    priceTrend,
    virtual case
      when stockTrend = 'INCREASING' then 'positive'
      when stockTrend = 'DECREASING' then 'negative'
      else 'neutral'
    end as stockTrendIndicator : String,
    virtual case
      when lowStockItems > 0 then 'warning'
      when outOfStockItems > 0 then 'error'
      else 'success'
    end as stockStatus : String
  }

  action replenishStock(productId: UUID, quantity: Integer);
}