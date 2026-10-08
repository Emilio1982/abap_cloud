CLASS zejgg_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zejgg_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art type STANDARD TABLE OF zejgg_tab_art.
  it_art = value #(
  ( client = sy-mandt id_art = 1  descr = 'Minicolores'
    descr2 = 'Mini estuche con minicolores'
  color  = 'varios'  piezas  = 12  stock  = 10
  url = 'https://lalibreteria.mx/products/lapices-arcoiris?_pos=2&_sid=01dafef61&_ss=r' )
  ( client = sy-mandt id_art = 2  descr = 'Libreta'
    descr2 = 'Libreta mágica'
  color  = 'negro'  piezas  = 1  stock  = 100
  url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-arillo-soft-cover-04_600x.jpg?v=1692003062' )
    ( client = sy-mandt id_art = 3 descr = 'Plumones'
    descr2 = 'Colores'
  color  = 'varios'  piezas  = 5  stock  = 20
  url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-frios-01_600x.jpg?v=1711595432' )
      ( client = sy-mandt id_art = 4 descr = 'Lápiz'
    descr2 = 'Lapicero'
  color  = 'negro'  piezas  = 1  stock  = 1
  url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-helvetica-black-01_600x.jpg?v=1780420440' )

   ).

   insert zejgg_tab_art FROM table @IT_ART.
   IF SY-SUBRC = 0.
   OUT->WRITE( 'De categoría!' ).
   else.
   out->write(  'Ha petado!!!' ).
   endif.
  ENDMETHOD.
ENDCLASS.
