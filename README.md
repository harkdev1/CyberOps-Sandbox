# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
# CyberOps-Sandbox: Empowering Advanced Endpoint Telemetry (In Progress)

## 1. Project Story

The CyberOps-Sandbox project is dedicated to building a robust, controlled environment for cybersecurity operations, focusing on real-world threat detection and incident response capabilities. This ongoing phase specifically concentrated on enhancing our Security Information and Event Management (SIEM) integration. We successfully deployed and configured Wazuh agents on a Windows 11 endpoint, establishing a critical pipeline for ingesting high-fidelity PowerShell telemetry. This work ensures that sophisticated activities like script block logging (Event ID 4104) are captured and centrally archived, laying essential groundwork for advanced threat hunting and forensic analysis within the sandbox environment.

## 2. Key Achievements

*   **End-to-End PowerShell Telemetry:** Successfully implemented and validated the complete collection of Windows PowerShell Event ID 4104 (Script Block Logging) telemetry from a Windows 11 client to a centralized Wazuh SIEM.
*   **Wazuh Agent Integration:** Deployed and registered the Wazuh agent on the `WIN11-CLIENT01` endpoint, ensuring active monitoring and connectivity.
*   **Advanced Auditing Configuration:** Configured Windows Group Policy to enable PowerShell Script Block Logging, capturing detailed script execution data.
*   **Raw Event Archiving:** Enabled and verified the Wazuh manager's capability to retain raw JSON events, providing granular data for deep investigations.
*   **System Hardening:** Identified and resolved critical configuration issues in the Wazuh manager XML, enhancing its stability and functionality.

## 3. Lessons Learned

*   **Verify at the Source First:** It is paramount to confirm local event generation on the source endpoint *before* troubleshooting SIEM agent collection or forwarding issues. This ensures the problem isn't upstream of the agent.
*   **Policy Activation Nuances:** Understand that some system policy changes, particularly in PowerShell, require a fresh process or session to take effect. Always test changes in a new context.
*   **Configuration XML Validation:** Thoroughly validate configuration files (e.g., Wazuh manager XML) to avoid subtle syntax errors or duplicate elements that can silently prevent critical features from activating.
*   **Structured Troubleshooting:** Establish a systematic troubleshooting sequence: enable logging, generate a controlled event, verify it locally, then verify its presence in the SIEM manager's archives.

## 4. Next Steps

This specific implementation and validation phase has reached its immediate objectives, establishing a foundational capability for Windows endpoint telemetry within the CyberOps-Sandbox. The overall project continues, and future iterations will build upon this robust data ingestion pipeline to develop advanced detection rules, automate incident response playbooks, and integrate additional security tools and data sources.

## 5. Proof Points

*   Wazuh Agent Installed/Started Successfully
*   Wazuh Powershell Configuration
*   Wazuh Windows Endpoint Investigation
*   Raw Event Archiving Configuration
*   Wazuh Powershell Event Ingestion Confirmed

## Latest session
### Work completed
Configured Windows PowerShell Script Block Logging through the Windows registry, verified local generation of PowerShell Event ID 4104, confirmed the Wazuh agent was collecting the PowerShell Operational event channel, enabled Wazuh JSON event archiving, corrected the Wazuh manager configuration XML and validated it, restarted the Wazuh manager successfully, verified that controlled PowerShell test events reached ubuntu-siem01 and were written to /var/ossec/logs/archives/archives.json.

### AI-reviewed session summary
**Summary:**
Successfully implemented and validated end-to-end collection of Windows PowerShell Event ID 4104 (Script Block Logging) telemetry. This involved enabling script-block auditing on a Windows endpoint via the registry, configuring the Wazuh agent to collect these events, and setting up the Wazuh manager to retain raw JSON events in its archives. Key issues encountered during configuration, including incorrect manager XML and policy activation nuances, were identified and resolved, culminating in the successful verification of controlled PowerShell events reaching the centralized SIEM and being stored in JSON format.

**Tasks Completed:**
*   Configured Windows PowerShell Script Block Logging through the Windows registry.
*   Verified local generation of PowerShell Event ID 4104 on the Windows endpoint.
*   Confirmed the Wazuh agent was successfully collecting the PowerShell Operational event channel.
*   Enabled Wazuh JSON event archiving on the manager.
*   Corrected the Wazuh manager configuration XML to enable archiving.
*   Validated the corrected Wazuh manager configuration.
*   Successfully restarted the Wazuh manager service.
*   Verified that controlled PowerShell test events reached the `ubuntu-siem01` Wazuh manager.
*   Confirmed that these events were written to `/var/ossec/logs/archives/archives.json`.

**Issues Encountered:**
*   **Wazuh Event Visibility:** PowerShell events were initially visible locally on the Windows endpoint but were not appearing in Wazuh, suggesting a collection or forwarding issue.
*   **Script Block Logging Activation:** Script Block Logging was not enabled through the initially expected registry policy, requiring a specific registry key modification.
*   **PowerShell Session Refresh:** After enabling the Script Block Logging policy, a fresh PowerShell process was required before controlled events would appear, a detail initially overlooked.
*   **Wazuh Manager Configuration Errors:** The Wazuh manager configuration XML contained duplicate root elements, which prevented JSON archiving from being enabled successfully until corrected.
*   **Troubleshooting Focus:** Initial troubleshooting efforts were misdirected, focusing too heavily on Wazuh agent collection and manager forwarding before adequately confirming the Windows endpoint was generating the specific controlled PowerShell events.

**Next Steps:**
No further next steps were outlined for this specific implementation and validation phase.

**Notes:**
*   A key lesson learned during troubleshooting was the critical importance of verifying local event generation on the source endpoint *before* investigating collection or forwarding issues with the SIEM agent.
*   The correct sequence for verifying end-to-end telemetry was established: enable logging, generate a controlled event, verify the event locally on the source, then verify its presence in the manager's archives.
*   Careful attention must be paid to PowerShell policy activation, as some changes (like Script Block Logging via registry) require opening a fresh PowerShell process to take effect.

**Session time:** 2026-11-17, 05:05 to 06:11

**Goal:** Integrate WIN11-CLIENT01 into the Wazuh monitoring environment, register its Wazuh agent with ubuntu-siem01, verify agent connectivity, generate controlled Windows activity, confirm centralized telemetry ingestion.

**Goal achieved:** Yes

**Duration:** 65 minutes (planned: 40 minutes)

**Working story:** Successful implementation and validation of end-to-end Windows PowerShell telemetry collection, enabling script-block auditing on the endpoint, configuring Wazuh to retain raw JSON events, troubleshooting and correcting the manager configuration, proving that controlled Event ID 4104 records traveled from the Windows endpoint to the centralized SIEM.

**Friction or blockers:** PowerShell events were initially visible locally but not appearing in Wazuh, Script Block Logging was not enabled through the expected registry policy, the policy change required opening a fresh PowerShell process before the controlled event appeared, the Wazuh manager configuration also contained duplicate root XML elements that needed correction before archiving could be enabled successfully.

**AI gaps:** The initial troubleshooting focused too heavily on Wazuh collection and forwarding before confirming that Windows was generating the specific controlled PowerShell events, the first test commands did not account for Script Block Logging being disabled, the need to open a fresh PowerShell process after enabling the policy was identified later. The troubleshooting ultimately established the correct sequence: enable logging, generate a controlled event, verify it locally, then verify it in the manager archive.

**AI peer review:** Approved by human at 2026-11-17 06:12:58

**Reviewer notes:** The session achieved a significant infrastructure milestone. The evidence establishes that PowerShell Script Block Logging is enabled, Event ID 4104 records are generated locally, the Wazuh agent forwards those records, and the Wazuh manager stores them in its raw event archive.

**Notes:** None.

**Handoff:** The next session should begin by verifying that PowerShell Event ID 4104 records are searchable in the Wazuh Dashboard, then proceed to detection engineering and controlled detection testing.

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
