CLASS zhello_world_ejgg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhello_world_ejgg IMPLEMENTATION.
method if_oo_adt_classrun~main.
out->write( 'Hello world!' ).
ENDMETHOD.
ENDCLASS.
