# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
This project is ongoing.

---

# CyberOps-Sandbox: SIEM Foundation & Endpoint Baselining

## 1. Project Story
The 'CyberOps-Sandbox' project is actively establishing a practical environment for advanced security operations, currently focusing on building a robust foundation for centralized security monitoring. This initiative began by thoroughly assessing existing network infrastructure and endpoint telemetry on Windows systems, identifying key visibility gaps, and strategically planning for a Security Information and Event Management (SIEM) deployment using Wazuh. We've successfully provisioned a dedicated Ubuntu Server as the core SIEM host, meticulously integrating it into our segmented OPNsense virtual network. This foundational work sets the stage for advanced threat detection and analysis, moving beyond initial baselining towards operational security intelligence.

## 2. Key Achievements
*   **SIEM Host Foundation Established:** Successfully provisioned and configured a dedicated Ubuntu Server (26.04.1 LTS) virtual machine, purpose-built for centralized security monitoring within VMware.
*   **Segmented Network Integration:** Seamlessly integrated the new SIEM host into the existing OPNsense-managed segmented LAN (VMnet2), ensuring controlled and secure network communication.
*   **Core System & Remote Access Operational:** Configured essential system components, validated network connectivity (DNS, gateway), and established secure remote SSH access, preparing the environment for immediate Wazuh deployment.
*   **Initial Endpoint Visibility Baselined:** Completed initial baseline checks on Windows endpoints, auditing event logs and identifying telemetry visibility gaps, providing a clear path for future SIEM data ingestion.
*   **Strategic Deployment Planning:** Conducted a comprehensive review of host resources and network infrastructure to select a feasible Wazuh deployment approach, anticipating and addressing potential constraints like host memory limitations.

## 3. Lessons Learned
*   **Credential Management & Recovery:** Encountered and successfully resolved an initial login failure on the Ubuntu server due to forgotten credentials, highlighting the critical importance of robust credential management and swift recovery protocols in infrastructure deployment.
*   **Resource Optimization in Constrained Environments:** Learned to adapt VM resource allocation (e.g., conservative 4GB RAM) to align with host resource availability, emphasizing the need for ongoing performance monitoring and dynamic resource adjustment.
*   **Pre-Deployment Baselines are Crucial:** Validated the value of conducting thorough baseline assessments (e.g., Windows event logs, network checks) *before* SIEM deployment to effectively identify gaps and inform solution architecture.

## 4. Next Steps
*   **Wazuh Installation & Configuration:** Proceed with the comprehensive installation and configuration of Wazuh on the newly provisioned Ubuntu SIEM server.
*   **Performance Monitoring & Optimization:** Continuously monitor the SIEM host's performance during Wazuh operations, reviewing and adjusting VM memory allocation as needed to ensure optimal data processing and analysis capabilities.
*   **Endpoint Agent Deployment & Data Ingestion:** Deploy Wazuh agents to designated Windows endpoints and configure data ingestion pipelines to centralize security telemetry for analysis.

## 5. Proof Points
*   **Ubuntu Server 26.04.1 LTS (ubuntu-siem01):** Provisioned with 2 CPU cores, 4 GB RAM, and a 50 GB virtual disk, serving as the dedicated SIEM host.
*   **Network Integration:** Successfully connected to the OPNsense-managed VMnet2, assigned IPv4 address 192.168.20.131/24, with verified gateway and DNS resolution.
*   **Remote Accessibility:** OpenSSH Server enabled and successfully verified for secure remote access from the physical Windows host.
*   **Screenshot Evidence:** Visual documentation includes "Ubuntu Storage Configuration," "Ubuntu Server First Login," "Ubuntu SSH Service Running," along with initial "Endpoint Baseline Initial Audit" and "Security Log Baseline," demonstrating foundational progress.

## Latest session
### Work completed
Created a dedicated Ubuntu Server 26.04.1 LTS virtual machine in VMware, configured 2 CPU cores and 4 GB RAM with a 50 GB virtual disk, connected the VM to the existing OPNsense LAN through VMnet2, completed Ubuntu installation and account recovery, updated system packages, verified hostname and network configuration, confirmed gateway connectivity and external internet access, verified DNS resolution, enabled OpenSSH Server, established successful remote SSH access from the physical Windows host.

### AI-reviewed session summary
Summary:
A dedicated Ubuntu Server 26.04.1 LTS virtual machine has been successfully provisioned in VMware, establishing a foundational Linux server for centralized security monitoring. The VM was integrated into the existing segmented OPNsense LAN, with core system configuration, network validation, and remote administration capabilities established. This prepares the environment for future Wazuh deployment without requiring a rebuild of existing infrastructure.

Tasks Completed:
*   Provisioned a dedicated Ubuntu Server 26.04.1 LTS virtual machine in VMware.
*   Configured the VM with 2 CPU cores, 4 GB RAM, and a 50 GB virtual disk.
*   Integrated the VM into the existing OPNsense LAN via VMnet2.
*   Completed the Ubuntu installation process.
*   Successfully performed an account recovery and password reset.
*   Updated all system packages to the latest versions.
*   Verified hostname and network configuration (IP address, subnet mask).
*   Confirmed gateway connectivity and external internet access.
*   Validated DNS resolution.
*   Enabled the OpenSSH Server.
*   Established successful remote SSH access from the physical Windows host.

Issues Encountered:
*   Initial Ubuntu login failed due to an incorrect or forgotten password, necessitating entry into recovery mode to identify the existing account and perform a password reset.
*   Conservative VM memory allocation was required due to initial host resource availability constraints.

Next Steps:
*   Proceed with the installation and configuration of Wazuh on the newly provisioned Ubuntu server.
*   Review host resource availability to potentially increase VM memory allocation if performance bottlenecks are observed or future requirements demand it.

Notes:
*   The current VM memory allocation of 4 GB is functional but was influenced by host resource limitations. Performance should be monitored during Wazuh deployment and operation, and memory adjusted as needed to ensure optimal security monitoring performance.
*   The successful integration into the OPNsense LAN through VMnet2 ensures proper network segmentation and controlled communication for the security monitoring solution.

**Session time:** 2026-11-03, 05:57 to 06:34

**Goal:** Deploy and establish the Ubuntu Server foundation for centralized security monitoring.

**Goal achieved:** Yes

**Duration:** 36 minutes (planned: 40 minutes)

**Working story:** Establishing a dedicated Linux server foundation for centralized security monitoring, integrating the new server into the existing segmented virtual network, validating connectivity and remote administration, preparing the environment for Wazuh deployment without rebuilding existing infrastructure.

**Friction or blockers:** The Ubuntu login initially failed because the configured password was incorrect or had been forgotten, requiring recovery mode to identify the existing account and reset its password. Initial host resource availability also required conservative VM memory allocation.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-11-03 06:35:12

**Reviewer notes:** Ubuntu Server installation and baseline validation were completed successfully. The server is operational and accessible remotely from the physical Windows host. Network connectivity, DNS resolution, package updates, and SSH functionality were verified.

**Notes:** Hostname: ubuntu-siem01, operating system: Ubuntu 26.04.1 LTS, kernel: Linux 7.0.0-42-generic, architecture: x86_64, network interface: ens33, IPv4 address: 192.168.20.131/24, gateway: 192.168.20.1, VM network: VMnet2, VM allocation: 2 CPU cores, 4 GB RAM, 50 GB disk, SSH service: enabled and active, remote access: verified from Windows PowerShell.

**Handoff:** Ubuntu Server is fully installed, updated, and remotely accessible. The next session begins with preparing the Ubuntu environment for Wazuh all-in-one deployment, installing the Wazuh manager, indexer, and dashboard, and verifying service health.

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
