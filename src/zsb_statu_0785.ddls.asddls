@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'STATUS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSB_STATU_0785 as select from zstatus_0785

//association [0..*] to ZSB_header_0785 as _Header on $projection.Orderstatus = _Header.Orderstatus



{
@UI.textArrangement: #TEXT_ONLY
@UI.lineItem: [{importance: #HIGH  }]
//@ObjectModel.text.association: '_Header'



   // key orderstatus as Orderstatus,
    
    texto as Text
   // _Header 
    
}
