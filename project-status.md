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

## Session – 2026-10-11

### Status: In progress

### Session summary
### Work completed
Verified NS-DC01 configuration, confirmed Windows Server 2025 with AD DS and DNS, documented the northstar.local domain and network settings, confirmed VMware NAT mode, identified reusable Project 1 administration and PowerShell capabilities, reviewed Project 2 scope.

### AI-reviewed session summary
Summary:
Current efforts focused on establishing a verified baseline configuration for NS-DC01, documenting its existing state, and identifying reusable administrative assets from Project 1. This foundational work is crucial for preparing the environment for Project 2, with a strong emphasis on preserving current capabilities and avoiding premature changes.

Tasks Completed:
*   Verified and documented the configuration of NS-DC01, confirming it runs Windows Server 2025.
*   Confirmed the presence and configuration of Active Directory Domain Services (AD DS) and DNS roles on NS-DC01.
*   Documented the `northstar.local` domain and its associated network settings.
*   Confirmed VMware NAT network mode is in use for the environment.
*   Identified existing Project 1 administration and PowerShell capabilities with potential for reuse in future projects.
*   Reviewed the high-level scope and requirements for Project 2.

Issues Encountered:
None

Next Steps:
*   Continue analysis of Project 2 requirements against the established baseline to identify integration points and potential impact.
*   Further evaluate the identified reusable Project 1 administrative and PowerShell capabilities for direct application or adaptation in Project 2.
*   Develop a preliminary design or plan for Project 2 that leverages the existing environment without introducing breaking changes.

Notes:
The primary focus of this phase was to meticulously document and understand the current state of the environment, particularly NS-DC01, without making any modifications. This ensures a stable baseline is established before initiating Project 2 activities. A key guiding principle is to preserve existing capabilities and assets from Project 1 wherever possible, streamlining future efforts. This preparatory work is essential for a smooth transition into Project 2 planning and implementation.

### Session details
**Session time:** 2026-10-11, 10:55 to 11:07

**Goal:** Preserve and verify existing CyberOps documentation and repository state, passively inspect the existing VMware/Windows Server environment, identify Project 1 capabilities that Project 2 can reuse, document the handover and CyberOps resumption point.

**Goal achieved:** Yes

**Duration:** 12 minutes (planned: 60 minutes)

**Working story:** Preserving existing capabilities, establishing the baseline, preparing for Project 2 without changing the environment.

**Friction or blockers:** None

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-11 11:09:12

**Reviewer notes:** NS-DC01 uses 192.168.148.10/24, gateway 192.168.148.2, loopback DNS, VMware NAT, workstation Group Policy application remains unverified.

### Notes
No extra notes recorded.

### Where we left off
Baseline documented, next priority is implementing and validating Project 2's core networking deliverables.

---

