# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
Here is a concise project summary for 'CyberOps-Sandbox', reflecting its ongoing status.

---

# CyberOps-Sandbox: Building a Centralized Security Monitoring Environment

## 1. Project Story

The **CyberOps-Sandbox** project is actively establishing a dedicated, robust virtual environment for centralized security monitoring, designed to provide hands-on experience and demonstrate practical cyber operations capabilities. The project initiated by provisioning a foundational Ubuntu Server within VMware, strategically integrating it into a segmented virtual network (OPNsense LAN via VMnet2).

Currently, the primary focus is on the crucial deployment of **Wazuh**, a leading open-source security platform, to serve as the core Security Information and Event Management (SIEM) solution. This involves meticulous selection and installation of the correct Ubuntu Server version (24.04.5 LTS) to ensure optimal compatibility and stability for Wazuh. Once Wazuh is operational, the sandbox will enable comprehensive security telemetry collection, baseline establishment, and incident analysis, laying the groundwork for advanced cyber defense practices.

## 2. Key Achievements

*   **Foundational Server Provisioning:** Successfully provisioned and configured an Ubuntu Server virtual machine in VMware, establishing the essential operating system foundation for the security monitoring solution.
*   **Network Segmentation & Integration:** Seamlessly integrated the server into a segmented virtual network (OPNsense LAN via VMnet2), ensuring proper isolation and controlled communication crucial for security operations.
*   **Remote Administration Enabled:** Established and verified remote SSH access from the host machine to the Ubuntu Server, streamlining management and configuration tasks.
*   **Critical OS Version Alignment:** Through proactive compatibility review, identified and prepared for the correct Ubuntu Server 24.04.5 LTS version necessary for a stable Wazuh deployment, avoiding potential issues with an initially considered newer release.
*   **Initial Setup Challenge Resolution:** Demonstrated effective problem-solving by navigating and resolving initial setup challenges, including forgotten login credentials via recovery mode and adapting to host resource constraints for VM memory allocation.
*   **Wazuh Deployment Readiness:** Progressed to the point of acquiring necessary Wazuh components (e.g., signing key) and preparing the VM for the all-in-one Wazuh installation, signifying readiness for the core SIEM deployment phase.

## 3. Lessons Learned

*   **Pre-emptive Version Compatibility is Key:** The importance of thoroughly verifying operating system compatibility with target applications (Wazuh) *before* deployment became evident, as an initial incorrect Ubuntu version choice necessitated an OS replacement, highlighting the value of upfront planning.
*   **Systematic Troubleshooting & Recovery:** Encountering and successfully resolving issues like forgotten login credentials reinforced the necessity of methodical troubleshooting and leveraging system recovery mechanisms.
*   **Iterative Resource Allocation:** Acknowledged that initial conservative VM resource allocations, driven by host limitations, require ongoing review and potential adjustment as project requirements and performance demands evolve, particularly with the introduction of resource-intensive applications like Wazuh.
*   **Distinguishing ISO vs. Booted OS:** Learned the critical distinction between an attached ISO and the *actually booted* operating system version to ensure correct configurations and avoid future deployment roadblocks.

## 4. Next Steps

*   Complete the Ubuntu Server 24.04.5 LTS installation and verification on the virtual machine.
*   Proceed with the all-in-one deployment and configuration of the Wazuh Manager, Indexer, and Dashboard.
*   Validate Wazuh services are fully operational, accessible, and ready for agent enrollment.
*   Begin ingesting security telemetry from various endpoints and establishing initial monitoring baselines within Wazuh.
*   Continuously review and potentially increase VM memory allocation based on Wazuh performance and host resource availability.

## 5. Proof Points

**Project Logs:**
*   `2026-11-03.md`: Documents the successful provisioning of the Ubuntu Server, its integration into the segmented network, establishment of SSH access, and initial configuration.
*   `2026-11-04.md`: Details the proactive compatibility review, the identification and procurement of the correct Ubuntu Server 24.04.5 LTS for Wazuh, and the ongoing preparatory steps for the Wazuh deployment.

**Screenshot Captions (Evidencing foundational work and future intent):**
*   **Foundational Setup:** "Ubuntu Storage Configuration," "Ubuntu Username Recovery after forgetting," "Ubuntu Server First Login," "Ubuntu SSH Service Running"
*   **Security Monitoring Objectives:** "Endpoint Baseline Initial Audit," "Security Log Baseline," "Telemetry Visibility Gap," "Process Creation Telemetry," "Security Event Distribution," "CyberOps Baseline v0.1" (Indicating the strategic intent to build comprehensive security monitoring and analysis capabilities).

## Latest session
### Work completed
Reviewed Ubuntu 26.04.1 compatibility with the Wazuh deployment, verified the Wazuh signing key, identified Ubuntu Server 24.04 LTS as the documented installation target, obtained the Ubuntu Server 24.04.5 ISO, prepared the existing virtual machine for OS replacement.

### AI-reviewed session summary
Summary:
Reviewed Ubuntu 26.04.1 compatibility with the Wazuh deployment, verified the Wazuh signing key, identified Ubuntu Server 24.04 LTS as the documented installation target, obtained the Ubuntu Server 24.04.5 ISO, prepared the existing virtual machine for OS replacement.

Tasks Completed:
Reviewed Ubuntu 26.04.1 compatibility with the Wazuh deployment, verified the Wazuh signing key, identified Ubuntu Server 24.04 LTS as the documented installation target, obtained the Ubuntu Server 24.04.5 ISO, prepared the existing virtual machine for OS replacement.

Issues Encountered:
The initial Ubuntu version selection introduced an avoidable compatibility detour, distinguishing between the ISO attached to the VM and the operating system actually booted, confirming the appropriate Wazuh installation path.

Next Steps:
Need to finish Ubuntu 26.04.5 LTS iso swap to finish Wazuh installation

Notes:

**Session time:** 2026-11-04, 05:49 to 06:19

**Goal:** Deploy Wazuh all-in-one on Ubuntu Server and establish the centralized monitoring foundation.

**Goal achieved:** No

**Duration:** 30 minutes (planned: 45 minutes)

**Working story:** None

**Friction or blockers:** The initial Ubuntu version selection introduced an avoidable compatibility detour, distinguishing between the ISO attached to the VM and the operating system actually booted, confirming the appropriate Wazuh installation path.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-11-04 06:22:23

**Reviewer notes:** Keep the existing VM hardware configuration. Confirm Ubuntu 24.04.5 is actually installed before proceeding with Wazuh.

**Notes:** Existing VM configuration: 4 vCPU, 8 GB RAM, 50 GB virtual disk, VMnet2 network. Wazuh signing key was downloaded successfully.

**Handoff:** Ubuntu Server 24.04.5 ISO selected and attached for reinstallation. Final boot/install confirmation and OS compatibility validation remain outstanding. Wazuh repository and packages have not yet been installed.

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
