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
//association [1..1] to ZSB_STATU_0785 as _Status on $projection.Orderstatus = _Status.Orderstatus
association [1..1] to ZSB_STATUSS_0785 as _Status on $projection.Orderstatus = _Status.Orderstatu
{
key id as       Id,
email as        Email,
fname as        Fname,
lname as        Lname,
country as      Country,
creat as        Creat,
deliv as        Deliv,
orderstatus as Orderstatus,

//orderstatus as Orderstatus,
//orderstatus as Orderstatus,

// case 
//     
//        //si hya mas de 100 productos
//       when orderstatus = '1' then 1
//        when orderstatus = '2' then 2
//        when orderstatus = '3' then 3
//       else 0
//   end as Orderstatus,
//    
//    case orderstatus
//       // Yellow for Pending
//       
//        when '1' then 1  // Green for Authorized
//        when '2' then 2  // Red for Denied
//        when '3' then 3  // Blue for Completed
//        else 0         // Gray for Unknown
//    end as Orderstatus,
//    
     
    
    
    
 imageurl as     Imageurl   , 
_Items,
_Status

//asosiaciones
}
