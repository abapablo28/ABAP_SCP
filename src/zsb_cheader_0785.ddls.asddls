@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'consumo header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZSB_cheader_0785 
provider contract transactional_query
as projection on ZSB_header_0785 as Cheader
{
    key Id,
    @Search.defaultSearchElement: true
    Email,
    @Search.defaultSearchElement: true
    Fname,
    Lname,
    Country,
    Creat,
    Deliv,
    Orderstatus,
//    @ObjectModel.text.element: [ 'texto' ]  //acá el nombre del campo donde está el texto en status
//      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZSB_STATUS_0785',
//                                                     element: 'Orderstatus' }, //aca el elemento de cod que tienen en común 
//                                           useForValidation: true }]
//
//_Status.Texto,  ////acá el nombre del campo donde está el texto en status
//    
//    orderstatus,
    
    
    
    Imageurl,
    /* Associations */
    _Items : redirected to composition child  ZSB_citems_0785
}
