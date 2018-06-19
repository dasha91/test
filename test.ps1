
$Duration = "02:00:00"
$durationSpan = [TimeSpan]$Duration

$masterJobId = "db338849-6b1a-464d-bd4d-d28fb82bf9df"
$SoftwareUpdateConfigurationName = "test"
$osType = 'Windows'
$computerCount = 1
$agentId = "db338849-6b1a-464d-bd4d-d28fb82bf9dd"
$targetComputer = 'coolBro'

Set-SoftwareUpdateConfigurationRun -Id $masterJobId -SoftwareUpdateConfigurationName $SoftwareUpdateConfigurationName -ConfiguredDuration $durationSpan -OperatingSystem $operatingSystem -ComputerCount $computerCount

Set-SoftwareUpdateConfigurationMachineRun -Id $machineRunId -AgentId $agentId -SoftwareUpdateConfigurationRunId $masterJobId -SoftwareUpdateConfigurationName $SoftwareUpdateConfigurationName -ConfiguredDuration $durationSpan -OperatingSystem $osType -TargetComputer $targetComputer
