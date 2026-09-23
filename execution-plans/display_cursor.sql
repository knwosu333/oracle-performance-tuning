-- Display the runtime cursor plan for a known SQL_ID.
-- Replace <sql_id> and optionally <child_number>.
SELECT *
FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(
  '<sql_id>',
  <child_number>,
  'ALLSTATS LAST +PEEKED_BINDS +OUTLINE'
));

-- ALLSTATS LAST is most useful when runtime statistics were collected.
-- Compare estimated rows with actual rows when those statistics are available.
