-- Current active user sessions
SET LINESIZE 220
COLUMN username FORMAT A20
COLUMN event FORMAT A35
COLUMN machine FORMAT A30

SELECT inst_id, sid, serial#, username, sql_id,
       status, event, wait_class, seconds_in_wait, machine
FROM gv$session
WHERE type = 'USER'
  AND status = 'ACTIVE'
ORDER BY seconds_in_wait DESC;
