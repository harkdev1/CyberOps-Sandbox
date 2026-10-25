# Changelog

- 2026-09-30: Noted baseline specs for project. 
- 2026-10-07: need to redo this session
- 2026-10-07: Established what security telemetry already exists on NS-DC01 and confirmed that Windows Security Event Logs can be queried as an investigation data source.
- 2026-10-08: Tested whether the existing Windows Security telemetry could reliably observe intentional activity on NS-DC01. The session established that the current Security log does not reliably expose the simple process/file activity we tested.
- 2026-10-11: Verified NS-DC01 configuration, confirmed Windows Server 2025 with AD DS and DNS, documented the northstar.local domain and network settings, confirmed VMware NAT mode, identified reusable Project 1 administration and PowerShell capabilities, reviewed Project 2 scope.
- 2026-10-25: Reviewed the existing OPNsense WAN, LAN, and SERVERS network baseline, verified WIN11-CLIENT01 network identity and connectivity configuration, confirmed endpoint IPv4 address 192.168.20.165 with gateway 192.168.20.1, checked for Wazuh and Sysmon services with neither returned by the initial checks, verified Windows Security logging is enabled with 29,072 records, verified System logging is enabled with 1,792 records, verified PowerShell Operational logging is enabled with 483 records, established that elevated PowerShell is required to inspect the Security log, made no system or network configuration changes.
