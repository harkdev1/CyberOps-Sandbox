# CyberOps-Sandbox

Status: In progress

## Project story
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
