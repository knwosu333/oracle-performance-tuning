# Oracle Performance Tuning

A practical Oracle DBA portfolio focused on diagnosing database performance using dynamic performance views, SQL execution statistics, wait events, execution plans, AWR/ASH methodology, optimizer statistics, and session analysis.

## Areas Demonstrated
- Top SQL analysis
- Database wait events
- Active session analysis
- Blocking-session diagnostics
- Execution plan review
- Index usage investigation
- Optimizer statistics review
- AWR/ASH troubleshooting workflow
- Production performance incident methodology

## Structure
- `sql-analysis/`
- `wait-events/`
- `sessions/`
- `execution-plans/`
- `statistics/`
- `docs/`

## Methodology

A Senior DBA should avoid tuning by assumption. Establish the performance baseline and time window, identify the dominant resource or wait class, isolate the SQL/session/object involved, determine root cause, implement the least-risk corrective action, and measure the result.

> Some views and features referenced here can require Oracle licensing or additional privileges. Confirm your organization's Oracle licenses and policies before using Diagnostic/Tuning Pack features such as AWR/ASH.
