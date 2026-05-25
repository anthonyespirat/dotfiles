---
description: Save a checkpoint of current work using git stash and immediately re-apply it
model: google/gemini-2.5-flash-lite
agent: ask
tools:
  - bash: true
---

You are running the checkpoint command.

Instructions:
- If `$ARGUMENTS` is provided → use it directly as the stash message.  
- If `$ARGUMENTS` is empty →  
  1. Run `git diff --cached; git diff` to see staged + unstaged changes.  
  2. Summarize those changes into a short, human-readable message  
     (e.g., "update login validation", "add order API route", "refactor utils").  
  3. Use that as the stash message: `<summary>`.  

After you have the stash message:
1. Run `git stash push -u -m "checkpoint: <stash-message>"`  
2. Immediately run `git stash apply` to re-apply the stashed changes so you can keep working.