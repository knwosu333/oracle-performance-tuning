-- Non-idle system wait events
SET LINESIZE 220
COLUMN event FORMAT A45
COLUMN wait_class FORMAT A20

SELECT * FROM (
  SELECT event, wait_class, total_waits,
         ROUND(time_waited_micro/1000000,2) time_waited_seconds
  FROM v$system_event
  WHERE wait_class <> 'Idle'
  ORDER BY time_waited_micro DESC
)
WHERE ROWNUM <= 20;
