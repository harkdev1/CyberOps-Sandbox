# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
# CyberOps-Sandbox: Building a Resilient SIEM Foundation

## 1. Project Story

The CyberOps-Sandbox project is establishing a robust, centralized Security Information and Event Management (SIEM) environment to enable advanced cyber operations and telemetry analysis. This ongoing initiative focuses on building a resilient and scalable security monitoring infrastructure.

Initial efforts focused on deploying the core SIEM stack and exploring endpoint telemetry, but faced significant infrastructure compatibility and resource challenges. This led to an iterative approach, necessitating a full re-establishment of the core SIEM server environment. Through this process, we meticulously rebuilt the Ubuntu server infrastructure, successfully deployed the Wazuh SIEM stack, and overcame critical constraints, including OS versioning and host storage limitations. The project has now achieved a stable, operational SIEM foundation, ready for deeper endpoint integration and security use case development.

## 2. Key Achievements

*   **Resilient SIEM Deployment:** Successfully re-established and deployed a functional Wazuh 4.14.10 all-in-one SIEM stack on Ubuntu Server 24.04.5 LTS within a VMware environment, demonstrating iterative problem-solving and recovery capabilities.
*   **Robust Infrastructure Foundation:** Configured secure remote administration via OpenSSH and expanded virtual machine resources (LVM root filesystem) to meet application requirements.
*   **Overcoming Critical Hurdles:** Addressed significant infrastructure challenges, including initial OS compatibility issues (necessitating a rollback), complex VM boot configurations, and physical host storage exhaustion during deployment.

## 3. Lessons Learned

*   **Thorough Pre-flight Checks:** The critical importance of comprehensive pre-deployment checks, particularly for host disk capacity and component compatibility, to prevent costly interruptions.
*   **Independent Validation:** Emphasized the need for independent validation of AI-generated guidance for critical infrastructure components to avoid compatibility issues.
*   **Systematic Troubleshooting:** Reinforced the value of explicit package installation verification before checking service status, and meticulous command entry to prevent diagnostic delays.
*   **Resilience in Practice:** Demonstrated the ability to recover from unexpected system-level issues, such as full operating system reinstallation and interrupted deployments, and continue progress effectively.

## 4. Next Steps

*   Integrate Windows endpoints into the Wazuh SIEM for comprehensive log collection and security monitoring.
*   Begin ingesting and analyzing telemetry data from integrated endpoints to identify security visibility gaps and establish baseline security logs.
*   Develop initial security use cases and alerts based on the collected security data.

## 5. Proof Points

*   **Wazuh Services Operational:** Screenshot evidence confirms Wazuh Indexer, Manager, and Dashboard services are actively running.
*   **Wazuh Dashboard Accessible:** Screenshot evidence verifies successful web access to the Wazuh SIEM dashboard over HTTPS.
*   **Core Configuration:** Wazuh version 4.14.10 deployed on Ubuntu Server 24.04.5 LTS (VM configured with 4 vCPU, 8 GB RAM, 50 GB virtual disk, with root filesystem expanded to 48 GB).
*   **Remote Access:** OpenSSH is installed and active, confirming secure remote administration capabilities.
*   **Early Telemetry Exploration:** Prior efforts included initial audit and collection of security logs, process creation telemetry, and identification of telemetry visibility gaps, providing a foundation for upcoming endpoint integration.

## Latest session
### Work completed
Ubuntu Server 24.04.5 LTS reinstallation, VMware boot configuration, Ubuntu package updates, LVM root filesystem expansion, OpenSSH installation and configuration, remote SSH validation, Wazuh indexer deployment, Wazuh manager deployment, Wazuh dashboard deployment, service health verification, dashboard accessibility validation.

### AI-reviewed session summary
**Summary:**
This documentation details the process of re-establishing a compatible Ubuntu server environment within VMware, configuring secure remote administration, and deploying a functional Wazuh Security Information and Event Management (SIEM) stack. The initiative focused on rebuilding the infrastructure while preserving existing VMware hardware configurations, addressing initial operating system compatibility issues, overcoming critical resource constraints, and ensuring the accessibility and health of the deployed security monitoring services.

**Tasks Completed:**
*   Reinstallation of Ubuntu Server 24.04.5 LTS.
*   Configuration of VMware boot settings to ensure proper virtual disk boot.
*   Execution of comprehensive Ubuntu package updates.
*   Expansion of the LVM root filesystem to accommodate application requirements.
*   Installation and configuration of OpenSSH for secure remote access.
*   Validation of remote SSH connectivity.
*   Deployment of the Wazuh Indexer component.
*   Deployment of the Wazuh Manager component.
*   Deployment of the Wazuh Dashboard component.
*   Verification of all deployed Wazuh service health.
*   Validation of Wazuh Dashboard accessibility.

**Issues Encountered:**
*   Initial attempt to use Ubuntu 26.04 resulted in compatibility issues, necessitating a rollback to 24.04.5 LTS.
*   Difficulty ensuring the virtual machine booted from the existing virtual disk rather than the replacement ISO after OS reinstallation.
*   An unexpected full operating system reinstallation was required due to prior issues, consuming additional time.
*   The OpenSSH server package was initially missing, leading to failed SSH connection attempts.
*   Stale SSH host identification entries caused connection warnings and required manual client-side cleanup.
*   Physical Windows host storage exhaustion occurred during the Wazuh installation, interrupting the deployment process.
*   Recovery and continuation of the interrupted Wazuh installation required additional troubleshooting and resource management.

**Next Steps:**
No explicit next steps were provided in the rough notes.

**Notes:**
*   Initial OS compatibility guidance obtained via AI was not sufficiently validated, leading to a need for OS reinstallation. This highlights the importance of independent verification of critical infrastructure compatibility.
*   The VMware ISO boot configuration required more intensive troubleshooting than anticipated, indicating a need for clearer instructions or pre-validation in future similar tasks.
*   The initial SSH service check assumed OpenSSH was installed, which was incorrect. Future diagnostic steps should explicitly confirm package installation before checking service status.
*   A typo in a package inspection command led to wasted diagnostic time. Emphasize careful command entry and validation.
*   A critical oversight was not checking the host disk capacity *before* beginning the Wazuh deployment, directly leading to installation interruption and recovery efforts. Future deployments must include thorough pre-flight checks of all system resources.

**Session time:** 2026-11-16, 07:12 to 08:01

**Goal:** Establish the Wazuh SIEM infrastructure on ubuntu-siem01, validate the Ubuntu Server environment, deploy the all-in-one Wazuh stack, confirm dashboard accessibility, prepare the environment for Windows endpoint integration.

**Goal achieved:** Yes

**Duration:** 49 minutes (planned: 50 minutes)

**Working story:** Establishing a compatible SIEM server environment, rebuilding the Ubuntu infrastructure while preserving VMware hardware configuration, configuring secure remote administration, deploying and recovering a centralized security monitoring stack, validating service health and dashboard accessibility, overcoming infrastructure resource constraints.

**Friction or blockers:** Initial Ubuntu 26.04 compatibility issue, booting from the replacement ISO instead of the existing virtual disk, reinstalling the operating system, missing OpenSSH server package, stale SSH host identification, physical Windows host storage exhaustion during Wazuh installation, recovering the interrupted installation.

**AI gaps:** Initial OS compatibility guidance was insufficiently validated, the ISO boot configuration required additional troubleshooting, the initial SSH service check assumed OpenSSH was installed, one package inspection command contained a typo, host disk capacity was not checked before beginning the Wazuh deployment.

**AI peer review:** Approved by human at 2026-11-16 08:02:57

**Reviewer notes:** Ubuntu Server 24.04.5 LTS is installed on ubuntu-siem01, Wazuh components are version 4.14.10, all three core services report active, dashboard access over HTTPS is confirmed.

**Notes:** VM configuration: 4 vCPU, 8 GB RAM, 50 GB virtual disk, VMnet2 network. Ubuntu root filesystem expanded to 48 GB, approximately 23 GB available at final verification. Ubuntu IP address: 192.168.20.131. OpenSSH is installed and active. Physical Windows D: drive storage was recovered, leaving approximately 112 GB available.

**Handoff:** Wazuh infrastructure deployment is complete. The dashboard is accessible, but no endpoint agents are registered yet. Next session: integrate WIN11-CLIENT01, register the Wazuh agent, generate controlled Windows activity, verify centralized telemetry ingestion, and begin detection engineering.

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
