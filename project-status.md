# CyberOps Sandbox Project Status

## Current status: In progress

This file records the live project journey and preserves session history after every AutoDoc finish.

## Session – 2026-10-08

### Status: In progress

### Session summary
Ran controlled process and file activity tests on NS-DC01 to determine whether the current Windows Security telemetry reliably records the activity. The expected Notepad process event was not observed, identifying a real visibility gap rather than a confirmed detection.

### Session details
- Goal: Relate a controlled administrative action to the resulting Windows event and PowerShell investigation.
- Duration: 11 minutes (planned: 15 minutes).
- Key finding: The current Security log configuration does not reliably expose the tested activity; Event ID 4688 and ambient events are not proof without matching evidence.
- Friction: Clarifying telemetry concepts, checking audit-policy assumptions, and correcting event-property interpretation.
- Next steps: Review process/file audit policies on NS-DC01, repeat controlled tests, and document the policies and event IDs that produce reliable evidence.

### Notes
Treat negative observations as findings. An event occurring near an action does not establish that the action caused it.

### Where we left off
Investigate and configure the necessary audit policies, then rerun the process-creation and file-activity tests.

---
