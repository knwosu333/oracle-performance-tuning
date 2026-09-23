# Common Oracle Wait Events — Investigation Notes

## db file sequential read
Often associated with single-block reads. Investigate the SQL, access path, object, I/O latency, and whether the observed volume is abnormal for the workload.

## db file scattered read
Can be associated with multiblock reads. Determine which SQL/objects are driving reads and whether scans are expected.

## log file sync
Investigate commit frequency, redo write latency, application commit behavior, and LGWR-related bottlenecks.

## enq: TX - row lock contention
Identify blocker/waiter relationships and the application transaction responsible. Long transactions, uncommitted changes, and application concurrency patterns can contribute.

## direct path read temp / write temp
Investigate work areas, sorts/hashes, execution plans, TEMP usage, and SQL volume.

A wait event is evidence, not automatically the root cause. Interpret it in the context of workload, duration, frequency, SQL, sessions, and system metrics.
