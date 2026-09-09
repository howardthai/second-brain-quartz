---
tags: [resource, engineering, ai-influencer]
---

# Elite Engineering Skill

A custom Hermes skill enforcing staff-level discipline on the AI Influencer project.

## Lifecycle Commands
- `/spec` — PRD + traceability matrix + change log
- `/plan` — Atomic tasks, < 4 hours each
- `/build` — Thin vertical slices, security checklist
- `/test` — 80/15/5 pyramid, Beyoncé Rule
- `/review` — 5-axis audit
- `/ship` — Feature flags, staged rollout, rollback plan

## Schema Invariants
- `platform_accounts` uses `tokenExpiresAt` (never `expiresAt`)
- `analytics_ingestion_jobs` and `analytics_snapshots` use `personaId`
- `analyticsIngestionJobs` unique constraint is `(personaId, date)`
- `personas` and `campaigns` have `reviewRequired` + `autoPublish`
- `content_pieces` has `approvalStatus` enum with `approvedBy`, `approvedAt`, `rejectionReason`
