# CyberOps-Sandbox

Status: In progress

## Project story
# CyberOps-Sandbox Project Summary

## 1. Project Story
The CyberOps-Sandbox is an ongoing initiative to develop and refine a robust, observable environment for Cyber Operations training and analysis. Our current focus involves meticulously baselining an existing Windows Server 2025 Active Directory environment (NS-DC01) within a VMware NAT network to preserve its capabilities while preparing it for a subsequent phase, Project 2. A critical aspect of this work involves establishing reliable security telemetry. Through hands-on experimentation, we are rigorously testing and validating the environment's ability to observe administrative activities, specifically identifying and addressing visibility gaps in Windows Security logs to ensure all critical actions are reliably detected and analyzed. This project emphasizes a principled, experimental approach, treating both successful detections and unexpected telemetry failures as valuable engineering insights to build a highly effective security operations sandbox.

## 2. Key Achievements
*   **Established Verified Baseline:** Successfully documented and verified the configuration of the NS-DC01 environment, confirming Windows Server 2025, Active Directory Domain Services, DNS roles, and network settings (`northstar.local` domain, VMware NAT), providing a stable foundation for future development.
*   **Identified Reusable Assets:** Pinpointed existing administrative and PowerShell capabilities from Project 1 for potential reuse, streamlining the transition to Project 2.
*   **Conducted Initial Telemetry Assessment:** Performed controlled administrative actions (e.g., process creation, file manipulation) on NS-DC01 and systematically queried Windows Security events to understand existing observability.
*   **Discovered Critical Visibility Gaps:** Confirmed that the default Windows Security log configuration does not reliably capture simple process creation (e.g., `Notepad.exe`) and file activities, highlighting essential areas for audit policy enhancement.
*   **Validated Telemetry Methodology:** Established a foundational understanding of the telemetry lifecycle: `Action ↓ Windows records event ↓ PowerShell retrieves event ↓ Analyst investigates`, providing a framework for future telemetry improvements.

## 3. Lessons Learned
*   **Meticulous Baselining is Paramount:** Deeply understanding and documenting the current state of an environment before making modifications is crucial for preserving existing capabilities and ensuring a smooth transition to new project phases.
*   **Telemetry is an Engineering Task:** Reliable security telemetry is not inherent; it requires deliberate configuration of audit policies. Assuming simple actions will generate observable events without verification leads to significant blind spots.
*   **Failure to Observe is a Finding:** Negative results—the absence of an expected event—are just as valuable as positive detections, serving as critical indicators of visibility gaps that require engineering attention.
*   **Clarity in Concepts:** Precise definitions of terms like "telemetry" and distinguishing between an event merely occurring versus being reliably observable are essential for accurate analysis and effective problem-solving.

## 4. Next Steps
*   Continue analyzing Project 2 requirements against the established baseline to identify integration points and potential impacts.
*   Further evaluate identified Project 1 administrative and PowerShell capabilities for direct application or adaptation within Project 2.
*   Develop a preliminary design for Project 2 that leverages the existing environment while maintaining stability and avoiding breaking changes.
*   Address identified telemetry visibility gaps by implementing and validating specific audit policy configurations to ensure comprehensive activity logging.

## 5. Proof Points
*   **Engineering Log – 2026-10-11:** Details the goal, tasks, and successful outcome of establishing a verified baseline configuration for NS-DC01, including documented Windows Server 2025, AD DS, DNS, and network settings.
*   **Engineering Log – 2026-10-08:** Documents the experimental session, tasks completed, and critical issues encountered, specifically noting: "Confirmed that the current Windows Security log configuration does not reliably expose the simple process/file activity tested."
*   **Screenshot: Telemetry Visibility Gap:** Visually confirms the findings of unreliable event logging during the initial telemetry assessment.
*   **Screenshot: CyberOps Baseline v0.1:** Provides visual evidence of the initial baselining effort for the CyberOps environment.
*   **Screenshot: Process Creation Telemetry & Security Event Distribution:** Illustrate the attempts and challenges in capturing and distributing security events related to process creation.

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
### Highlight: Process Creation Telemetry
![Process Creation Telemetry](../screenshots/2026-10-07_052909_process-creation-telemetry.png)
This screenshot shows the telemetry or evidence being reviewed to understand the current system behavior and validate what the environment is actually recording. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
