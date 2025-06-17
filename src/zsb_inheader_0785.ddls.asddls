@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'header interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSB_inheader_0785
provider contract transactional_interface
 as projection on ZSB_header_0785 as Pheader

{
    key Id,
    Email,
    Fname,
    Lname,
    Country,
    Creat,
    Deliv,
    Orderstatus,
  
    
    Imageurl,
    /* Associations */
    _Items : redirected to composition child ZSB_iITEMS_0785
}
