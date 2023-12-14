CODIGO_ESTAD5
:where_pr  and numero_tabla = '5'
       AND (   EXISTS
                   (SELECT 1
                      FROM FROXA_FAMILIAS B
                     WHERE     b.numero_familia_origen = '2'
                           AND b.numero_familia_destino = '5'
                           AND b.codigo_familia_origen = :campos.codigo_estad2
                           AND b.codigo_familia_destino =  familias.codigo_familia)
            OR NOT EXISTS
                   (SELECT 1
                      FROM FROXA_FAMILIAS B
                     WHERE     b.numero_familia_origen = '2'
                           AND b.numero_familia_destino = '5'
                           AND b.codigo_familia_origen = :campos.codigo_estad2))


CAMPOS.CODIGO_FAMILIA
CAMPOS.CODIGO_ESTAD2
CAMPOS.CODIGO_ESTAD4

2 SUBFAMILIA 004 BOBINAS Y LAMINAS -> 5 007 BOBINA, 117 LAMINA
             006 CAJAS             -> 5 014 CAJA,   115 BOX
             058 BANDEJAS Y TAPAS  -> 5 116 TAPA, 014 CAJA
             005 BOLSAS            -> 5 010 BOLSA 
             012 ETIQUETAS         -> 5 118 ETIQUETA CONGELADO, 119 ETIQUETA NORMAL 

2 SUBFAMILIA 001 ADITIVO         -> 5 114 ANTIOXIDANTE, 120 COLORANTE, 121 AROMA, 085 OTROS
             056 PANES Y HARINAS -> 5 023 ENCOLANTE, 067 TEMPURA, 122 PAN RALLADO, 123 MIX, 124 HARINA    
             057 GRASAS          -> 5 086 ACEITE, 125 GRASA  
             011 ESPECIAS        -> 5 026 ESPECIAS
             060 NITRÓGENO       -> 5 126 NITRÓGENO
             059 VARIOS          -> 5 998 VARIOS