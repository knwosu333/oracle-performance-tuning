# Production Scenario — High Database CPU

## Situation
Users report that an application is slow and database-host CPU has increased sharply.

## Investigation
1. Confirm the time window and business impact.
2. Check whether CPU pressure is database-related or caused by another host process.
3. Review active sessions and database load.
4. Identify SQL consuming high CPU.
5. Compare executions, elapsed time, CPU time, buffer gets, and disk reads.
6. Inspect execution plans for the dominant SQL.
7. Check for plan changes, stale/misleading statistics, inefficient joins, excessive logical I/O, or workload/concurrency changes.
8. Correlate findings with AWR/ASH where licensed.
9. Apply a controlled remediation.
10. Compare post-change metrics with the baseline.

## Avoid
- Killing sessions without understanding business impact.
- Flushing the shared pool as a routine tuning technique.
- Adding indexes without workload analysis.
- Changing optimizer/system parameters without evidence and change control.
