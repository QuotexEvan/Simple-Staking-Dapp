---
description: |
  This workflow creates daily repo status reports. It gathers recent repository
  activity (issues, PRs, discussions, releases, code changes) and generates
  engaging GitHub issues with productivity insights, community highlights,
  and project recommendations.
engine: claude
network: defaults
"on":
  schedule: daily
  workflow_dispatch: null
permissions:
  contents: read
  copilot-requests: none
  issues: read
  pull-requests: read
safe-outputs:
  allowed-github-references: []
  create-issue:
    close-older-issues: true
    labels:
      - report
      - daily-status
    title-prefix: "[repo-status] "
  mentions: false
source: githubnext/agentics/workflows/repo-status.md@5d11aa2a05ce2c943c085acb7b12b583f83ed375
tools:
  bash:
    - cat
    - ls
    - find
    - grep
    - head
    - tail
    - wc
  github:
    lockdown: false
    min-integrity: none
---

# Repo Status

Create an upbeat daily status report for the repo as a GitHub issue.

## What to include

- Recent repository activity (issues, PRs, discussions, releases, code changes)
- Progress tracking, goal reminders and highlights
- Project status and recommendations
- Actionable next steps for maintainers

## Style

- Be positive, encouraging, and helpful 🌟
- Use emojis moderately for engagement
- Keep it concise - adjust length based on actual activity

## Process

1. Gather recent activity from the repository
2. Study the repository, its issues and its pull requests
3. Create a new GitHub issue with your findings and insights
