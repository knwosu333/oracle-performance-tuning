# AWR / ASH Performance Investigation Workflow

## 1. Define the Incident Window
Determine when degradation began, when it ended, affected services, and the expected baseline.

## 2. Check Host and Database Symptoms
Correlate CPU, memory, I/O, database load, sessions, connection activity, and application symptoms.

## 3. Review AWR
Where appropriately licensed, compare the incident period with a representative baseline. Review:
- DB Time and DB CPU
- Load Profile
- Top Foreground Events
- SQL ordered by elapsed time
- SQL ordered by CPU
- SQL ordered by gets/reads
- Instance Activity
- I/O statistics
- Advisory sections

## 4. Use ASH for Time-Scoped Analysis
Where appropriately licensed, use ASH to determine which sessions, SQL IDs, modules, objects, and wait events dominated the incident window.

## 5. Inspect SQL
Review execution plans, cardinality estimates, access paths, joins, predicates, statistics, bind behavior, and plan changes.

## 6. Correct the Root Cause
Possible actions can include SQL changes, statistics remediation, indexing, application concurrency changes, configuration correction, or capacity remediation. Do not jump directly to parameter changes.

## 7. Validate
Measure the same metrics after remediation and document before/after results.

## Interview Point
A strong performance-tuning answer starts with evidence and scope rather than immediately proposing an index or increasing memory.
