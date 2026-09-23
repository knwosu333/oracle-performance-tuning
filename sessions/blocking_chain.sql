-- Sessions currently waiting for another session
SET LINESIZE 220
SELECT inst_id, sid, serial#, username, sql_id,
       blocking_instance, blocking_session,
       event, seconds_in_wait
FROM gv$session
WHERE blocking_session IS NOT NULL
ORDER BY seconds_in_wait DESC;
