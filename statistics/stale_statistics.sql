-- Find table statistics reported as stale
SET LINESIZE 220
COLUMN owner FORMAT A25
COLUMN table_name FORMAT A35

SELECT owner, table_name, num_rows, last_analyzed, stale_stats
FROM dba_tab_statistics
WHERE object_type = 'TABLE'
  AND stale_stats = 'YES'
ORDER BY owner, table_name;

-- Do not automatically gather statistics solely because this query returns a row.
-- Review workload, maintenance policy, partitioning, and application requirements.
