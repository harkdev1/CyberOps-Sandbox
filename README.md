# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
Here is a concise project summary for 'CyberOps-Sandbox':

---

# CyberOps-Sandbox: Enhancing PowerShell Telemetry in Wazuh

## 1. Project Story

The 'CyberOps-Sandbox' is an ongoing technical initiative focused on advancing cybersecurity operations capabilities within a controlled environment. Our current primary objective is to enhance endpoint visibility by centralizing and refining PowerShell Script Block Logging (Event ID 4104) telemetry from Windows clients into our Wazuh Security Information and Event Management (SIEM) system. This work is critical for establishing a robust, reliable telemetry pipeline that forms the foundation for effective threat detection engineering and incident response exercises. We are actively building and validating the ingestion process to ensure comprehensive visibility of endpoint activities.

## 2. Key Achievements

During this phase of the project, we have made significant progress in establishing a foundational telemetry pipeline:

*   **Enabled Raw Event Archiving:** Successfully identified and enabled Wazuh Filebeat archive forwarding, ensuring that all raw endpoint telemetry, including PowerShell Script Block Logging, is persistently stored for forensic and analysis purposes.
*   **Validated Raw Event Ingestion:** Confirmed the successful end-to-end ingestion of newly generated PowerShell Script Block Logging (Event ID 4104) events from the `WIN11-CLIENT01` endpoint into the Wazuh manager's raw archives (`/var/ossec/logs/archives/archives.json`).
*   **Established Telemetry Baseline:** Inspected existing PowerShell telemetry within the Wazuh dashboard, allowing us to establish a baseline understanding of event structure and identify existing security policy discovery activities.
*   **Operational Readiness:** Verified the operational readiness of core Wazuh services and confirmed active agent connectivity for the monitored Windows endpoint.

## 3. Lessons Learned

This phase provided valuable insights that will guide future development:

*   **Telemetry Pipeline Granularity:** It is crucial to explicitly separate and validate each distinct stage of a telemetry pipeline (event generation, agent forwarding, manager archiving, and dashboard indexing) as individual milestones. This approach greatly streamlines troubleshooting and accurately isolates issues.
*   **Precision in Test Execution:** Early and clear identification of the target execution host is vital to prevent misdirected testing efforts and accelerate overall progress, reducing friction in the development cycle.
*   **Differentiating Ingestion vs. Visibility:** Discrepancies between successful raw archive ingestion and subsequent dashboard indexing can be significant time sinks. Future efforts will emphasize validating these concerns independently from the outset to enhance troubleshooting efficiency.

## 4. Next Steps

Our immediate focus is on resolving the current telemetry visibility challenges and advancing into detection engineering:

*   **Resolve Dashboard Visibility:** Investigate and resolve the technical discrepancy preventing newly archived PowerShell Script Block Logging events from appearing in the Wazuh dashboard.
*   **Develop Detections:** Proceed with developing and deploying new detection rules and dashboards, leveraging the now-validated raw PowerShell telemetry.
*   **Expand Test Coverage:** Broaden controlled activity generation to simulate additional PowerShell-based attack techniques, further enhancing the sandbox's detection engineering capabilities.

## 5. Proof Points

*   **Project Logs:** The engineering log entry for 2026-11-18.md details the tasks completed, issues encountered, and the clear distinction between successful raw event ingestion and unresolved dashboard visibility, as noted in the "AI Peer Review."
*   **Screenshot Captions:** Visual evidence includes:
    *   "Wazuh Filebeat Archive Forwarding Enabled"
    *   "Wazuh Powershell Event Ingestion Confirmed"
    *   "Wazuh Powershell Event Dashboard Visibility" (demonstrating existing visibility while highlighting the ongoing challenge for new events)

---

## Latest session
### Work completed
Inspected PowerShell Event ID 4104 records in Wazuh Threat Hunting, examined event JSON and script-block contents, identified security-policy discovery activity using secedit and PasswordHistorySize, enabled Filebeat Wazuh archive forwarding, validated the Filebeat configuration, restarted Filebeat successfully, generated controlled Get-LocalUser activity on WIN11-CLIENT01, verified the resulting Event ID 4104 records locally, confirmed the events reached /var/ossec/logs/archives/archives.json.

### AI-reviewed session summary
**Summary:**
This documentation outlines the successful establishment and validation of centralized PowerShell Script Block Logging telemetry within Wazuh. Key activities included enabling and configuring Filebeat archive forwarding, inspecting raw PowerShell Event ID 4104 records, identifying security policy discovery activity, and validating controlled endpoint actions against raw SIEM archives. The work specifically focused on distinguishing successful event ingestion from dashboard indexing limitations, thereby laying a critical foundation for subsequent detection engineering efforts.

**Tasks Completed:**
*   Inspected existing PowerShell Event ID 4104 records within Wazuh Threat Hunting.
*   Examined event JSON and script-block contents to understand current telemetry.
*   Identified security-policy discovery activity using `secedit` and `PasswordHistorySize` commands.
*   Enabled Filebeat Wazuh archive forwarding to ensure all raw events are stored.
*   Validated the Filebeat configuration for correctness.
*   Successfully restarted the Filebeat service.
*   Generated controlled `Get-LocalUser` activity on the designated endpoint, WIN11-CLIENT01, to create new events.
*   Verified the resulting Event ID 4104 records locally on WIN11-CLIENT01.
*   Confirmed that the generated events successfully reached `/var/ossec/logs/archives/archives.json` on the Wazuh manager.

**Issues Encountered:**
*   Difficulty in distinguishing between successful raw event ingestion into archives and their subsequent indexing for dashboard visibility.
*   Initial generation of test activity occurred on the physical Windows host rather than the intended monitored Windows client.
*   Challenges in determining why newly archived events were not appearing in the expected dashboard search results despite successful archival.
*   Time spent on isolating and troubleshooting the telemetry pipeline, diverting focus from direct progression into detection engineering.

**Next Steps:**
*   Investigate and resolve the discrepancy between raw archive ingestion and dashboard visibility for the new Event ID 4104 records.
*   Develop new detection rules or dashboards utilizing the validated PowerShell Script Block Logging telemetry.
*   Expand controlled activity generation to cover additional PowerShell-based attack techniques.

**Notes:**
The AI assistant's guidance led to several inefficiencies during this process. Specifically, it did not emphasize establishing the correct execution host early enough, allowing initial testing to proceed on an unmonitored physical Windows host. Furthermore, the AI treated dashboard visibility and raw archive ingestion too closely as a single validation step. A more effective approach would have been to explicitly separate and validate the distinct stages of the telemetry pipeline: endpoint event generation, agent forwarding, manager archiving, and finally, indexer/dashboard visibility.

**Session time:** 2026-11-18, 14:08 to 14:40

**Goal:** Verify that PowerShell Script Block Logging events (Event ID 4104) collected from WIN11-CLIENT01 are searchable in the Wazuh Dashboard, establish a reliable workflow for inspecting endpoint telemetry, prepare to transition into detection engineering.

**Goal achieved:** No

**Duration:** 31 minutes (planned: 60 minutes)

**Working story:** Improving centralized PowerShell telemetry visibility, identifying and correcting disabled Filebeat archive forwarding, inspecting actual Windows Script Block Logging records, validating controlled endpoint activity through raw SIEM archives, distinguishing successful ingestion from dashboard indexing limitations, establishing a foundation for subsequent detection engineering.

**Friction or blockers:** Distinguishing raw event ingestion from dashboard indexing, initially generating test activity on the physical Windows host instead of the monitored Windows client, determining why newly archived events were not appearing in the expected dashboard search results, spending additional time isolating the telemetry pipeline rather than progressing directly into detection engineering.

**AI gaps:** The AI did not establish the execution host early enough and initially allowed testing to proceed on the physical Windows host. It also treated dashboard visibility and raw archive ingestion too closely as one validation step. The investigation should have separated endpoint event generation, agent forwarding, manager archiving, and indexer/dashboard visibility from the beginning.

**AI peer review:** Approved by human at 2026-11-18 14:42:53

**Reviewer notes:** The session made meaningful infrastructure progress but did not complete the full detection-engineering objective. Filebeat archive forwarding was disabled and was successfully enabled. Existing PowerShell events were searchable in the dashboard, with eight matching records observed. Newly generated Get-LocalUser events were confirmed in the manager's raw archive, but their appearance in the dashboard remains unresolved.

**Notes:** None.

**Handoff:** The latest controlled Get-LocalUser events were confirmed in the Wazuh manager's raw archive. The remaining issue is confirming their visibility in the Wazuh Dashboard. Resume by investigating archive indexing and dashboard searchability without rebuilding or unnecessarily modifying the working telemetry pipeline. After that, proceed with detection engineering.

<!-- autodoc:project-snapshot:end -->

## Status: In progress

## Latest session – 2026-10-08
**Goal:** Generate controlled process/file activity on NS-DC01 and verify what Windows Security telemetry records.

**Outcome:** The tested activity was not reliably visible in the current Security log configuration. This negative result established a telemetry visibility gap; Event ID 4688 alone was not sufficient proof that the tested process activity was being captured.

**Duration:** 11 minutes. **Friction:** Clarifying telemetry versus correlation, validating audit-policy coverage, and interpreting the missing Notepad process event. **Next:** Review audit policy settings, enable the required process/file auditing, and rerun the controlled tests.

## Project summary
This workspace is a hands-on cybersecurity sandbox for exploring defensive operations, system hardening, detection workflows, and practical lab-based exercises. The project is organized around real-world investigation and documentation so findings, tooling, and outcomes stay traceable.

## Purpose
The main objective is to build a repeatable environment for practicing operational security workflows without losing the evidence trail. Each task, issue, and resolved problem should be easy to reference and review later.

## Quick start
```powershell
cd D:\Projects\CyberOps-Sandbox
# review notes and logs
# run local tooling and capture evidence
# document findings in logs and README updates
```

## Core workflow
1. define the objective or task
2. run the lab exercise or investigation
3. capture proof and notes
4. document outcomes in the project logs
5. summarize the learning and next steps

## Current focus
- secure operations workflow
- detection and response exercises
- environment validation and evidence capture
- documenting lessons learned and follow-up tasks

## Project structure
```text
CyberOps-Sandbox/
├── README.md             Project overview and current plan
├── project-status.md     Current status and session history
├── logs/                 Investigation and session records
├── docs/                 Notes, summaries, and supporting documentation
├── screenshots/          Visual evidence and screenshots
├── projects/             Consolidated Helpdesk and Networking project snapshots
├── CHANGELOG.md          Project timeline and milestone entries
└── .autodoc/             Local AutoDoc state for tracking work
```

## Consolidated project work
- [Windows Helpdesk Lab archive](projects/windows-helpdesk-lab/README.md)
- [Networking & Infrastructure archive](projects/networking-infrastructure-engineering/README.md)
- [Archive scope and source commits](projects/README.md)

## Notes
This project is meant to behave like a real operational workspace: practical, evidence-driven, and easy to revisit later for reviews or retrospective summaries.
