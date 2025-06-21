@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'STATUS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSB_STATUSS_0785 as select from zstatuss_0785
{

@UI.textArrangement: #TEXT_ONLY
@UI.lineItem: [{importance: #HIGH  }]
//@ObjectModel.text.association: '_Header'
    key orderstatu as Orderstatu,
    texto as Texto
}
