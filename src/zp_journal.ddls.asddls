@EndUserText.label: 'Basic view for Journal'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZP_JOURNAL as projection on ZR_JOURNAL_ENTRY
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
