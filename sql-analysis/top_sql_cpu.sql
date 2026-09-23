-- Top SQL by cumulative CPU time
SET LINESIZE 220
COLUMN sql_text FORMAT A90

SELECT * FROM (
  SELECT sql_id,
         executions,
         ROUND(cpu_time/1000000,2) cpu_seconds,
         ROUND(elapsed_time/1000000,2) elapsed_seconds,
         buffer_gets,
         disk_reads,
         SUBSTR(sql_text,1,90) sql_text
  FROM v$sql
  WHERE executions > 0
  ORDER BY cpu_time DESC
)
WHERE ROWNUM <= 20;
