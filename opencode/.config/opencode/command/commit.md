---
description: Create a git commit using Conventional Commit style with scope detection
agent: ask
model: google/gemini-2.5-flash-lite
temperature: 0.2
tools:
  read: true
  bash: true
---

You are in commit mode. Focus on:

Here is a staged change:
!`git diff --cached; git diff`

- Inspect staged and unstaged changes
- Determine the **Conventional Commit type**: feat, fix, docs, style, refactor, test, chore
- Identify the scope:
  - If all changes are inside one app/package folder (e.g., `/api/`, `/front/`), use that as scope → `feat(api): …`
  - If multiple apps/packages changed, use scope `project`
- If the diff shows incompatible changes (e.g., removed functions, renamed endpoints, schema changes), mark the commit as **BREAKING CHANGE** with `!`
- Generate the commit message in this format:<type>(<scope>)!: <short-description>
- Optionally add a longer body explaining details of the change and its impact

Important:  
- Before running `git commit`, **always show the proposed commit message** to the user  
- Ask for explicit confirmation:  
- If confirmed → run `git commit -am "<commit-message>"`  
- If not confirmed → abort without changes