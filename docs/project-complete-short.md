# CyberOps-Sandbox

Status: In progress

## Project story
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

## What we shipped
- The project was completed with a clear objective, technical execution, and proof captured in the logs.
- The implementation and project records are documented in the repository for future context.
- The work can be reviewed quickly by anyone familiar with the project.

## Key proof moments
### Highlight: Wazuh Powershell Event Dashboard Visibility
![Wazuh Powershell Event Dashboard Visibility](../screenshots/2026-11-18_142508_wazuh-powershell-event-dashboard-visibility.png)
The source log labels this capture “Wazuh Powershell Event Dashboard Visibility.”
### Highlight: Telemetry Visibility Gap
![Telemetry Visibility Gap](../screenshots/2026-10-08_053048_telemetry-visibility-gap.png)
The source log labels this capture “Telemetry Visibility Gap.”
### Highlight: Wazuh Powershell Event Ingestion Confirmed
![Wazuh Powershell Event Ingestion Confirmed](../screenshots/2026-11-17_060947_wazuh-powershell-event-ingestion-confirmed.png)
The source log labels this capture “Wazuh Powershell Event Ingestion Confirmed.”


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
