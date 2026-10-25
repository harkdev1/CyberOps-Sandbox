# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
The CyberOps-Sandbox project is establishing a robust lab environment for advanced Security Information and Event Management (SIEM) and detection engineering. Currently in progress, this initiative has systematically validated the existing virtualized infrastructure, setting a clear, evidence-based foundation for upcoming deployments. Our focus has been on understanding the baseline configuration of network segments, Windows Server domain services, and target client endpoints, ensuring a stable and well-understood platform for building sophisticated threat detection capabilities.

### 1. Project story

The CyberOps-Sandbox project is laying the essential groundwork for a dynamic lab environment dedicated to advanced SIEM and detection engineering. Our current 'in progress' phase has meticulously established a foundational understanding of the existing virtualized infrastructure, from core network segments to domain services and endpoint states. This deliberate baseline validation is crucial for ensuring a stable platform as we transition from passive inspection to active deployment of sophisticated security monitoring and analysis capabilities, ultimately enabling robust threat detection practices.

### 2. Key achievements

*   **Comprehensive Infrastructure Baseline:** Established a verified baseline of the virtualized environment, including OPNsense network configuration, the Windows Server 2025 domain controller (NS-DC01) with Active Directory and DNS roles, and a target Windows client (WIN11-CLIENT01).
*   **Endpoint Telemetry Readiness:** Confirmed active Windows Security, System, and PowerShell Operational logging on the target endpoint, providing initial data sources and highlighting the critical immediate need for deploying dedicated endpoint telemetry agents.
*   **Preserved Environment Integrity:** All baseline validation activities were conducted without modifying existing system or network configurations, maintaining the integrity and stability of the lab environment.
*   **Identified Reusable Assets:** Documented existing administrative and PowerShell capabilities from prior projects, identifying potential for reuse in future SIEM and detection engineering efforts.

### 3. Lessons learned

*   **Privilege Management is Key:** Accessing critical security logs (e.g., Windows Security log) often requires elevated privileges, which must be accounted for in planning and automation.
*   **Verify System Identity:** Hostnames and expected OS versions can differ from reality; deeper investigation into operating system identification is crucial for compatibility and accurate planning.
*   **Proactive Resource Planning:** Early identification and addressing of host resource constraints (e.g., memory) are essential to prevent bottlenecks for future SIEM and detection component deployments.
*   **Telemetry is Foundational:** A robust detection engineering strategy hinges on comprehensive endpoint telemetry; recognizing this visibility gap early effectively prioritizes subsequent technical milestones.

### 4. Next steps

The immediate focus for CyberOps-Sandbox is on deploying and configuring essential endpoint telemetry agents (e.g., Wazuh, Sysmon) on WIN11-CLIENT01 to establish robust data collection. Concurrently, we will address identified host memory constraints to ensure adequate resources for upcoming SIEM and detection engineering tools. Further investigation into the endpoint's reported operating system identification will also be prioritized to confirm compatibility and avoid future issues, paving the way for active SIEM deployment.

### 5. Proof points

*   **Visual Documentation:** Screenshots titled 'Endpoint Baseline Initial Audit' and 'Security Log Baseline' (2026-10-25) illustrate the initial state and active logging on the target endpoint.
*   **Network & Endpoint Verification:** Confirmed WIN11-CLIENT01 network identity (IPv4 192.168.20.165, gateway 192.168.20.1) and verified active Windows logging sources, including 29,072 Security records, 1,792 System records, and 483 PowerShell Operational records observed.
*   **Server Configuration:** NS-DC01 verified running Windows Server 2025 with Active Directory Domain Services and DNS roles for the `northstar.local` domain, operating within a VMware NAT network configuration.
*   **Telemetry Gap Identified:** Explicit identification of the absence of dedicated endpoint telemetry agents as a critical technical milestone underscores the project's data-driven approach.

## Latest session
### Work completed
Reviewed the existing OPNsense WAN, LAN, and SERVERS network baseline, verified WIN11-CLIENT01 network identity and connectivity configuration, confirmed endpoint IPv4 address 192.168.20.165 with gateway 192.168.20.1, checked for Wazuh and Sysmon services with neither returned by the initial checks, verified Windows Security logging is enabled with 29,072 records, verified System logging is enabled with 1,792 records, verified PowerShell Operational logging is enabled with 483 records, established that elevated PowerShell is required to inspect the Security log, made no system or network configuration changes.

### AI-reviewed session summary
Summary:
Initial validation of the existing lab infrastructure was performed to establish an evidence-based starting point for the November CyberOps SIEM and detection engineering work. This involved reviewing network baselines, verifying endpoint network identity and connectivity, and confirming the status of core Windows event logging sources on a target workstation. A key finding was the absence of dedicated endpoint telemetry agents, identifying telemetry collection as the next critical technical milestone. No system or network configuration changes were made, preserving the existing infrastructure.

Tasks Completed:
*   Reviewed the existing OPNsense WAN, LAN, and SERVERS network baseline.
*   Verified WIN11-CLIENT01 network identity and connectivity configuration.
*   Confirmed WIN11-CLIENT01 endpoint IPv4 address (192.168.20.165) with gateway (192.168.20.1).
*   Checked for existing Wazuh and Sysmon service installations on the endpoint; neither were found.
*   Verified Windows Security logging is enabled (29,072 records observed).
*   Verified Windows System logging is enabled (1,792 records observed).
*   Verified Windows PowerShell Operational logging is enabled (483 records observed).
*   Established that elevated PowerShell privileges are required for inspecting the Security log.
*   Made no system or network configuration changes to the existing environment.

Issues Encountered:
*   Initial attempts to inspect the Windows Security log via PowerShell failed due to insufficient privileges, necessitating elevation.
*   The endpoint's operating system identification differed from the expected Windows 11 designation.
*   Available host memory is constrained while the existing virtual machines are running, potentially impacting future resource allocation for SIEM components.

Next Steps:
*   Deploy and configure endpoint telemetry agents (e.g., Wazuh, Sysmon) on WIN11-CLIENT01.
*   Further investigate the discrepancy in the endpoint's reported operating system identification.
*   Address host memory constraints to ensure adequate resources for upcoming SIEM and detection engineering tools.

Notes:
This initial validation effort successfully confirmed the foundational status of the lab environment prior to new deployments. The existing infrastructure, including network configuration, was preserved without modification. Confirmation of active Windows event sources provides a baseline for initial detection capabilities, pending the deployment of advanced telemetry agents.

**Session time:** 2026-10-25, 18:32 to 18:48

**Goal:** Establish the current CyberOps infrastructure baseline and identify the technical prerequisites for the November SIEM build, verify host resources, confirm existing VM and network state, identify blockers before installing anything.

**Goal achieved:** Yes

**Duration:** 16 minutes (planned: 20 minutes)

**Working story:** Validated the existing lab before deployment, confirmed available Windows event sources, identified endpoint telemetry collection as the next technical milestone, preserved existing infrastructure, established an evidence-based starting point for the November CyberOps SIEM and detection engineering work.

**Friction or blockers:** Initial Security log inspection failed because PowerShell lacked sufficient privileges, endpoint operating system identification differed from the expected Windows 11 designation, available host memory is constrained while the existing virtual machines are running.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-25 18:49:34

**Reviewer notes:** The endpoint's reported OS identity is Windows 10 Pro 26H2, build 26300.9711, despite its WIN11-CLIENT01 hostname. Preserve the existing configuration and investigate further only if OS compatibility becomes a real blocker. Wazuh and Sysmon installation status remains unconfirmed beyond the initial service-name checks.

**Notes:** None.

**Handoff:** The Windows endpoint is on the OPNsense LAN, the Security, System, and PowerShell Operational event logs are enabled, and elevated PowerShell successfully queried their status. Next, confirm the existing endpoint and VM resource constraints only as needed, establish Wazuh telemetry collection, verify that real endpoint events arrive in the SIEM, then build and test detections and investigation automation.

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
