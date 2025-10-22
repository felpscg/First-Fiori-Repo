namespace products;

entity Products {
  key ID          : UUID;
      name        : String;
      category    : String;
      price       : Decimal;
      stock       : Integer;
      supplier    : Association to Suppliers;
      createdAt   : DateTime;
      status      : String;
}

entity Suppliers {
  key ID          : UUID;
      name        : String; 
      products    : Association to many Products on products.supplier = $self;
}


@cds.persistence.skip
entity AnalyticsReport {
  key category           : String;
      // Product Metrics
      totalProducts     : Integer;
      activeProducts    : Integer;
      discontinuedProducts : Integer;
      productAvailability : Decimal; // % of products in stock
      
      // Financial Metrics
      averagePrice      : Decimal;
      minPrice         : Decimal;
      maxPrice         : Decimal;
      priceVariance    : Decimal;
      
      // Inventory Metrics
      totalStock       : Integer;
      stockValue       : Decimal;
      lowStockItems    : Integer; // Items below safety stock
      outOfStockItems  : Integer;
      stockTurnover    : Decimal; // Rate of inventory usage
      
      // Supplier Metrics
      suppliersCount   : Integer;
      avgLeadTime      : Integer;
      
      // Trend Indicators
      stockTrend       : String; // Increasing/Decreasing
      priceTrend       : String;
      
      // Time-based Metrics
      lastRestockDate  : DateTime;
      daysUntilReorder : Integer;
}