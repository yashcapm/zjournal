@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View For Journal Entry'
define root view entity ZR_JOURNAL_ENTRY
  as select  from ZI_JOURNAL01
                                                    
{
  key SalesOrder,
  key SalesOrderItem,
  Material,
  Plant,
  CustomerPriceGroup,
  MaterialByCustomer,
  PurchaseOrderByShipToParty,
  SoldToParty,
  CreationDate,
  OverallSDProcessStatus,
  /* Associations */
  _Salesorder
}
