CLASS zcl_data_0785 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_0785 IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.


Data: lt_header type table of zheader_0785,
      lt_item   type table of zitems_0785,
      lt_status type table of zstatuss_0785.

      lt_header = value #(
     ( id = '001' email = 'david@example.com' fname = 'David' lname = 'García'
  country = 'CO' creat = '20250103' deliv = '20250105' orderstatus = 1
  imageurl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSijsmBpiUFn6yR9FdiD1eA-nw2-aFMJY2EoQ&s' )

( id = '002' email = 'ana@example.com' fname = 'Ana' lname = 'García'
  country = 'CO' creat = '20250101' deliv = '20250105' orderstatus = 1
  imageurl = 'https://i.pinimg.com/originals/af/a4/58/afa45850e32dec8b2adb910e4fd5a4ac.png' )

 ).

    delete from zheader_0785.
    insert zheader_0785 from table @lt_header.

    if sy-subrc eq 0.
      out->write( |registros insertados| ).
    endif.

    lt_item = value #(


  ( id = '001' id_items = 'ITM001' name = 'Producto A'
  descr = 'Descripción del producto A' relea = sy-datum disco = sy-datum + 365
  price = '125.00' heigh = '10.00' width = '5.00' depth = '2.00'
  quant = '100.00' unito = 'PC' )

( id = '002' id_items = 'ITM002' name = 'Producto B'
  descr = 'Descripción del producto B' relea = sy-datum + 1 disco = sy-datum + 400
  price = '250.00' heigh = '15.00' width = '8.00' depth = '3.00'
  quant = '200.00' unito = 'KG' )


).


    delete from zitems_0785.
    insert zitems_0785 from table @lt_item.

    if sy-subrc eq 0.
      out->write( |registros insertados2| ).
    endif.

    lt_status = value #(
    ( orderstatu = 1 texto = 'Canceled' )
    ( orderstatu = 2 texto = 'In progress' )
    ( orderstatu = 3 texto = 'Acepted' )

    ).

     delete from zstatuss_0785.
    insert zstatuss_0785 from table @lt_status.

    if sy-subrc eq 0.
      out->write( |registros insertados3| ).
    endif.




ENDMETHOD.

ENDCLASS.
