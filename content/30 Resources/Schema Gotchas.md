---
tags: [resource, database, ai-influencer]
---

# Schema Gotchas

Critical naming conventions for the AI Influencer project.

| Table | Field | Never Use |
|---|---|---|
| `platform_accounts` | `tokenExpiresAt` | `expiresAt` |
| `analytics_ingestion_jobs` | `personaId` | `platformAccountId` |
| `analytics_snapshots` | `personaId` | `platformAccountId` |
| `analyticsIngestionJobs` | `(personaId, date)` | other unique constraints |
| `personas` | `reviewRequired`, `autoPublish` | — |
| `campaigns` | `reviewRequired`, `autoPublish` | — |
| `content_pieces` | `approvalStatus`, `approvedBy`, `approvedAt`, `rejectionReason` | — |

**Rule:** Always verify field names against this table before writing queries.
