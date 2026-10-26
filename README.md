# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
This summary outlines the ongoing development of the CyberOps-Sandbox project, highlighting key progress, lessons learned, and strategic next steps for building a robust security operations environment.

---

### 1. Project story

The CyberOps-Sandbox project is actively building a practical, reproducible environment for security operations, with a strong focus on evidence-based investigations using real telemetry. The initiative is progressing from establishing foundational infrastructure to deploying advanced Security Information and Event Management (SIEM) capabilities. Our current efforts are centered on integrating Windows endpoint telemetry into a Wazuh-based SIEM, paving the way for detection engineering and incident response exercises within a controlled lab setting. This work is ongoing, with critical next steps identified for SIEM deployment and data collection.

### 2. Key achievements

*   **Infrastructure Baseline Established:** Successfully reviewed and documented the existing OPNsense virtual firewall and segmented network infrastructure (WAN, LAN, SERVERS) as an evidence-based starting point.
*   **Endpoint Telemetry Readiness Confirmed:** Verified the network identity and initial event logging capabilities of a target Windows 11 client (WIN11-CLIENT01), confirming enabled Security, System, and PowerShell Operational logs.
*   **SIEM Deployment Strategy Defined:** Developed a plan for deploying Wazuh on an Ubuntu Server to collect and analyze endpoint telemetry, with the collection and investigation of genuine Windows endpoint telemetry defined as the immediate Month 2 milestone.
*   **Resource Constraints Identified:** Conducted host resource checks, confirming critical memory limitations (approximately 4.9 GB available with lab VMs running) that require optimization prior to SIEM installation.
*   **Non-Invasive Baselining:** Completed initial infrastructure and endpoint checks without making any system or network configuration changes, preserving the existing lab environment's integrity.

### 3. Lessons learned

*   **Resource Optimization is Critical:** Limited host memory presents a significant deployment constraint for SIEMs, necessitating careful resource planning and optimization before installation to ensure stable operation.
*   **Thorough Baselining Uncovers Gaps:** Comprehensive pre-deployment checks are invaluable for identifying missing components, such as dedicated endpoint telemetry agents, which clearly define subsequent technical milestones.
*   **Privilege Awareness is Key for Diagnostics:** Understanding and managing privilege requirements (e.g., elevated PowerShell for Windows Security log inspection) is crucial for effective initial reconnaissance and troubleshooting.

### 4. Next steps

*   Evaluate Wazuh's specific resource requirements and optimize host memory allocation accordingly.
*   Proceed with the deployment of Ubuntu Server as the SIEM host.
*   Install and configure Wazuh.
*   Begin collecting and investigating genuine Windows endpoint telemetry to achieve the defined Month 2 milestone.

### 5. Proof points

*   **Project Logs:** Documented progress on 2026-10-25 and 2026-10-26, detailing infrastructure baselining, resource validation, and SIEM planning efforts.
*   **Endpoint Readiness Data:** Verified WIN11-CLIENT01 network identity and event log status, with observed counts including 29,072 Security records, 1,792 System records, and 483 PowerShell Operational records on 2026-10-25.
*   **Visual Evidence:** Project documentation includes screenshots depicting "Endpoint Baseline Initial Audit" and "Security Log Baseline", validating initial reconnaissance and telemetry visibility checks. Other key visual evidence covers "Telemetry Visibility Gap", "Process Creation Telemetry", "Security Event Distribution", and "CyberOps Baseline v0.1".
*   **Strategic Planning:** An explicit Month 2 milestone has been defined to collect and investigate genuine Windows endpoint telemetry.
*   **Constraint Documentation:** Acknowledged and documented the critical constraint of approximately 4.9 GB available host memory while lab VMs were running.

## Latest session
### Work completed
Reviewed the existing OPNsense virtual firewall and segmented network infrastructure, confirmed Windows endpoint and event-log baseline checks had been completed, established the remaining Month 1 foundation tasks, planned Ubuntu Server deployment and Wazuh installation, defined the first Month 2 milestone as collecting and investigating genuine Windows endpoint telemetry.

### AI-reviewed session summary
Summary:
Significant progress was made in establishing foundational infrastructure and planning for the development of security operations capabilities. Key activities included reviewing existing network infrastructure, confirming baseline checks, establishing remaining Month 1 tasks, and planning for Wazuh deployment. The primary constraint identified is limited host memory, which requires further evaluation before proceeding with new installations.

Tasks Completed:
*   Reviewed the existing OPNsense virtual firewall and segmented network infrastructure.
*   Confirmed completion of Windows endpoint and event-log baseline checks.
*   Established the remaining Month 1 foundation tasks.
*   Planned Ubuntu Server deployment and Wazuh installation.
*   Defined the first Month 2 milestone: collecting and investigating genuine Windows endpoint telemetry.

Issues Encountered:
*   Available host memory is a significant deployment constraint. A previous check indicated approximately 4.9 GB available while lab VMs were running, which necessitates a thorough evaluation of Wazuh resource allocation prior to installation to ensure stable operation.

Next Steps:
*   Evaluate Wazuh resource requirements and optimize host memory allocation.
*   Proceed with Ubuntu Server deployment.
*   Install and configure Wazuh.
*   Begin collecting and investigating genuine Windows endpoint telemetry to meet the Month 2 milestone.

Notes:
The project is transitioning from building and validating foundational infrastructure to developing practical security operations capabilities. There is a strong emphasis on leveraging real telemetry for evidence-based investigations within a reproducible environment.

**Session time:** 2026-10-26, 05:52 to 06:38

**Goal:** Validate practical SIEM deployment options for CyberOps Sandbox, establish the available hosting resources and constraints, select a feasible Wazuh deployment approach, prepare the Week 2 implementation starting point.

**Goal achieved:** Yes

**Duration:** 45 minutes (planned: 45 minutes)

**Working story:** The transition from building and validating foundational infrastructure to developing practical security operations capabilities, with an emphasis on real telemetry, evidence-based investigation, and a reproducible environment.

**Friction or blockers:** Available host memory is the main deployment constraint. The previous check showed approximately 4.9 GB available while the lab VMs were running, so Wazuh resource allocation needs to be evaluated before installation.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-26 06:39:06

**Reviewer notes:** Month 1 is substantially established at the infrastructure level. Remaining work includes evaluating available resources and installing Ubuntu Server. Month 2 begins with SIEM deployment, Windows endpoint integration, telemetry validation, and the first investigation.

**Notes:** The target is to align the Month 1 checkpoint with the final week of October and begin Month 2 during the first week of November. The schedule is flexible if deployment requires additional troubleshooting.

**Handoff:** The lab is ready to move toward SIEM deployment, pending a fresh resource check. Next action: inspect available RAM on the physical Windows host, decide which VMs can remain powered on, and then create the Ubuntu Server VM. Do not begin Wazuh installation until the VM's resource requirements are feasible.

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
├── logs/                 Investigation and session records
├── docs/                 Notes, summaries, and supporting documentation
├── screenshots/          Visual evidence and screenshots
├── CHANGELOG.md          Project timeline and milestone entries
└── .autodoc/             Local AutoDoc state for tracking work
```

## Notes
This project is meant to behave like a real operational workspace: practical, evidence-driven, and easy to revisit later for reviews or retrospective summaries.
