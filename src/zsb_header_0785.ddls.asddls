@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'header cds'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZSB_header_0785 as select from zheader_0785 as Header
composition [1..*] of ZSB_ITEMS_0785 as _Items
//association [0..1] to ZSB_STATUS_0785 as _Status on $projection.orderstatus = _Status.Orderstatus

{
key id as       Id,
email as        Email,
fname as        Fname,
lname as        Lname,
country as      Country,
creat as        Creat,
deliv as        Deliv,
//orderstatus,

//  case 
//        when orderstatus = '0' then 'Rechazado'  
//        //si hya mas de 100 productos
//        when orderstatus = '1' then 'Pendiente'
//        when orderstatus = '2' then 'Aprobado'
//        when orderstatus = '3' then 'Completado'
//        else 'Desconocido'
//    end as orderstatust,
    
    case orderstatus
        when '0' then 2  // Yellow for Pending
        when '1' then 3  // Green for Authorized
        when '2' then 1  // Red for Denied
        when '3' then 5  // Blue for Completed
        else 0           // Gray for Unknown
    end as Orderstatus,
    
     
    
    
    
imageurl as     Imageurl   , 
_Items
//_Status

//asosiaciones
}
