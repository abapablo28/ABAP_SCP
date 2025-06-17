@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'consumo items'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZSB_citems_0785 as projection on ZSB_ITEMS_0785 as Citems
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
    _Header : redirected to parent ZSB_cheader_0785
}
