# CyberOps Sandbox

Status: Current focus: telemetry visibility gaps and operational logging validation

## Project story
CyberOps Sandbox is being built as a real tactical lab for learning security operations from the ground up. The project is driven by a simple principle: watch what the environment actually records, identify the gaps, and improve the system based on what is observable. The latest work focused on validating the quality of Windows security telemetry and recognizing that “no useful event observed” is itself a meaningful finding.

## Current focus
- telemetry validation in Windows Security logs
- process and file activity observability
- audit policy understanding and log quality improvement
- evidence-based detection workflow development

## Key milestones and evidence
### Baseline environment snapshot
![Baseline environment snapshot](../screenshots/2026-09-30_065419_cyberops-baseline-v0-1.png)

### Process creation telemetry review
![Process creation telemetry review](../screenshots/2026-10-07_052909_process-creation-telemetry.png)

### Security event distribution review
![Security event distribution review](../screenshots/2026-10-07_053206_security-event-distribution.png)

### Telemetry visibility gap
![Telemetry visibility gap](../screenshots/2026-10-08_053048_telemetry-visibility-gap.png)

## Trials and tribulations
The biggest challenge was that the environment looked active, but the useful telemetry was not actually visible. The test actions were happening, yet the expected Windows Security events were not giving a clear operational picture. This forced a more disciplined approach: validate the logging model first, understand the detection gaps, and treat visibility problems as a system design issue rather than a failed test.

## Significant contributions
- Structured the repo as a practical operational lab with logs, screenshots, and project notes.
- Tested basic process and file activity visibility in Windows Security telemetry.
- Identified a real gap between action and observable evidence.
- Framed negative results as valuable engineering outputs rather than failures.
- Built a repeatable model for future detections and telemetry tuning work.

## Lessons learned
- Telemetry quality matters more than the number of tools in the environment.
- A detection workflow is only as strong as the evidence it can actually see.
- Observation quality, audit configuration, and interpretation discipline are all part of the work.
- The lab is strongest when every session documents both what worked and what did not.

## Next steps
- Adjust audit policy on NS-DC01 to make process and file activity measurable.
- Validate the improved telemetry with targeted controlled activity.
- Capture a fresh baseline after the fixes are in place.
- Continue documenting the project as a live, hands-on operations lab rather than a static build.
