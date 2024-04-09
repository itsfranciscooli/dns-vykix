REM
REM Usage: 
REM     dns-vykix.bat
REM
REM Description:
REM     Configures Primary and Secondary DNS with VYKIX DNS Servers on interfaces listed below.
REM
REM     To change interfaces, replace "name" with your interface names, or use "index" instead.
REM
REM     To list the names and indices of your interfaces, run:
REM
REM         netsh interface ipv4 show interfaces
REM         netsh interface ipv6 show interfaces
REM

netsh interface ipv4 add dnsserver "Local Area Connection" 193.25.252.254

netsh interface ipv4 add dnsserver "Wireless Network Connection" 193.25.252.254
