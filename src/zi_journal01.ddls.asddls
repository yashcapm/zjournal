@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic view for Journal'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_JOURNAL01 
 as select from ztt_journal02
 association [0..1] to I_SalesOrderItem as _SalesOrderItem on $projection.salesorder = _SalesOrderItem.SalesOrder
                                                          and $projection.salesorderitem = _SalesOrderItem.SalesOrderItem 
 association [1..1] to I_SalesOrder as _Salesorder on  $projection.salesorder             =  _Salesorder.SalesOrder
                                                    and _Salesorder.OverallSDProcessStatus <> 'C'
{
    @ObjectModel.foreignKey.association: '_SalesOrder'
  key salesorder,
  key salesorderitem,
      material,
      plant,
      belnr,
      _SalesOrderItem.CustomerPriceGroup,
      _SalesOrderItem.MaterialByCustomer,
      _SalesOrderItem.PurchaseOrderByShipToParty,
      _Salesorder.SoldToParty,
      _Salesorder.CreationDate,
      _Salesorder.OverallSDProcessStatus,

      _Salesorder,
      _SalesOrderItem
}
