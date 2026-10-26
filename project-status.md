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

## Session – 2026-10-25

### Status: In progress

### Session summary
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

### Session details
**Session time:** 2026-10-25, 18:32 to 18:48

**Goal:** Establish the current CyberOps infrastructure baseline and identify the technical prerequisites for the November SIEM build, verify host resources, confirm existing VM and network state, identify blockers before installing anything.

**Goal achieved:** Yes

**Duration:** 16 minutes (planned: 20 minutes)

**Working story:** Validated the existing lab before deployment, confirmed available Windows event sources, identified endpoint telemetry collection as the next technical milestone, preserved existing infrastructure, established an evidence-based starting point for the November CyberOps SIEM and detection engineering work.

**Friction or blockers:** Initial Security log inspection failed because PowerShell lacked sufficient privileges, endpoint operating system identification differed from the expected Windows 11 designation, available host memory is constrained while the existing virtual machines are running.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-25 18:49:34

**Reviewer notes:** The endpoint's reported OS identity is Windows 10 Pro 26H2, build 26300.9711, despite its WIN11-CLIENT01 hostname. Preserve the existing configuration and investigate further only if OS compatibility becomes a real blocker. Wazuh and Sysmon installation status remains unconfirmed beyond the initial service-name checks.

### Notes
No extra notes recorded.

### Where we left off
The Windows endpoint is on the OPNsense LAN, the Security, System, and PowerShell Operational event logs are enabled, and elevated PowerShell successfully queried their status. Next, confirm the existing endpoint and VM resource constraints only as needed, establish Wazuh telemetry collection, verify that real endpoint events arrive in the SIEM, then build and test detections and investigation automation.

---

## Session – 2026-10-26

### Status: In progress

### Session summary
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

### Session details
**Session time:** 2026-10-26, 05:52 to 06:38

**Goal:** Validate practical SIEM deployment options for CyberOps Sandbox, establish the available hosting resources and constraints, select a feasible Wazuh deployment approach, prepare the Week 2 implementation starting point.

**Goal achieved:** Yes

**Duration:** 45 minutes (planned: 45 minutes)

**Working story:** The transition from building and validating foundational infrastructure to developing practical security operations capabilities, with an emphasis on real telemetry, evidence-based investigation, and a reproducible environment.

**Friction or blockers:** Available host memory is the main deployment constraint. The previous check showed approximately 4.9 GB available while the lab VMs were running, so Wazuh resource allocation needs to be evaluated before installation.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-26 06:39:06

**Reviewer notes:** Month 1 is substantially established at the infrastructure level. Remaining work includes evaluating available resources and installing Ubuntu Server. Month 2 begins with SIEM deployment, Windows endpoint integration, telemetry validation, and the first investigation.

### Notes
The target is to align the Month 1 checkpoint with the final week of October and begin Month 2 during the first week of November. The schedule is flexible if deployment requires additional troubleshooting.

### Where we left off
The lab is ready to move toward SIEM deployment, pending a fresh resource check. Next action: inspect available RAM on the physical Windows host, decide which VMs can remain powered on, and then create the Ubuntu Server VM. Do not begin Wazuh installation until the VM's resource requirements are feasible.

---

