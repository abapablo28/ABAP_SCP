@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'items interface'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSB_iITEMS_0785 as projection on ZSB_ITEMS_0785 as Pitems
{
    key Id,
    key IdItems,
    Name,
    Descr,
    Relea,
    Disco,
    Price,
    @Semantics.quantity.unitOfMeasure: 'Unito'
    Height,
       @Semantics.quantity.unitOfMeasure: 'Unito'
    Width,
    Depth,
    Quant,
    Unito,
    /* Associations */
    _Header : redirected to parent ZSB_inheader_0785
}
