# CyberOps Sandbox

> **Project status:** See [project-status.md](project-status.md) for the live status and journey, or the [short](docs/project-complete-short.md) and [long](docs/project-complete-long.md) project summaries.

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
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

## Latest session
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

**Session time:** 2026-10-11, 10:55 to 11:07

**Goal:** Preserve and verify existing CyberOps documentation and repository state, passively inspect the existing VMware/Windows Server environment, identify Project 1 capabilities that Project 2 can reuse, document the handover and CyberOps resumption point.

**Goal achieved:** Yes

**Duration:** 12 minutes (planned: 60 minutes)

**Working story:** Preserving existing capabilities, establishing the baseline, preparing for Project 2 without changing the environment.

**Friction or blockers:** None

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-11 11:09:12

**Reviewer notes:** NS-DC01 uses 192.168.148.10/24, gateway 192.168.148.2, loopback DNS, VMware NAT, workstation Group Policy application remains unverified.

**Notes:** None.

**Handoff:** Baseline documented, next priority is implementing and validating Project 2's core networking deliverables.

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
