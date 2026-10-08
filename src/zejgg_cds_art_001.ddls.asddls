@AbapCatalog.sqlViewName: 'ZEJGG_V_ART001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista artículos arte EJGG'
@Metadata.ignorePropagatedAnnotations: true
define view zejgg_cds_art_001 as select from zejgg_tab_art
{
    key id_art as IdArt,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    // 0 GREY
    //1 RED
    //2 YELLOW
    //3 GREEN
    case 
    when stock = 0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    else 0
    end as STATUS
}
