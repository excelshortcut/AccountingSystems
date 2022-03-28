SELECT TOP 50 E.EMPL_ID, E.LAST_FIRST_NAME, VE.VEND_ID, PE.PROJ_ID
FROM NCRCP.DELTEK.EMPL E
         JOIN NCRCP.DELTEK.VEND_EMPL VE ON E.EMPL_ID = VE.VEND_EMPL_ID
         LEFT OUTER JOIN NCRCP.DELTEK.PROJ_EMPL PE ON VE.VEND_EMPL_ID = PE.EMPL_ID
WHERE LEFT(E.EMPL_ID, 1) LIKE 'S%'
  AND VE.VEND_ID IS NOT NULL
  AND PE.PROJ_ID IS NULL
 --AND CHECK THIS FILE

--Test Test Test Test Test