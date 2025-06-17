@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'items cds'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSB_ITEMS_0785 as select from zitems_0785 as Items

association to parent ZSB_header_0785 as _Header on $projection.Id = _Header.Id
{
    key id as        Id,
    key id_items as IdItems,
    name as Name,
    descr as Descr,
    relea as Relea,
    disco as Disco,
    price as Price,
    @Semantics.quantity.unitOfMeasure: 'Unito'
    heigh as Height,
    @Semantics.quantity.unitOfMeasure: 'Unito'
    width as Width,
    depth as Depth,
    quant as Quant,
    unito as Unito,
    _Header
}
