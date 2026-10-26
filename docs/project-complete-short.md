# CyberOps-Sandbox

Status: In progress

## Project story
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

## What we shipped
- The project was completed with a clear objective, technical execution, and proof captured in the logs.
- The implementation and project records are documented in the repository for future context.
- The work can be reviewed quickly by anyone familiar with the project.

## Key proof moments
### Highlight: Telemetry Visibility Gap
![Telemetry Visibility Gap](../screenshots/2026-10-08_053048_telemetry-visibility-gap.png)
This screenshot shows the telemetry or evidence being reviewed to understand the current system behavior and validate what the environment is actually recording. It highlights the key detail the viewer should notice in this stage of the project.
### Highlight: Security Event Distribution
![Security Event Distribution](../screenshots/2026-10-07_053206_security-event-distribution.png)
This screenshot shows the telemetry or evidence being reviewed to understand the current system behavior and validate what the environment is actually recording. It highlights the key detail the viewer should notice in this stage of the project.
### Highlight: Security Log Baseline
![Security Log Baseline](../screenshots/2026-10-25_184616_security-log-baseline.png)
This screenshot shows the telemetry or evidence being reviewed to understand the current system behavior and validate what the environment is actually recording. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
