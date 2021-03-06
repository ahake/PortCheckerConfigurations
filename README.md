# PortQry

This is a hybrid collection of Microsoft's **PortQry** and **PortQryv2** tools (supplied for ease of use)
**PortQry v2** is a Microsoft Utility that can be download from [here](https://www.microsoft.com/en-au/download/details.aspx?id=17148)
The `PortQueryUI` has been taken from **PortQry v1**.

# Checking PaperCut or AutoStore ports

- Install folder at remote location where problem occurs
- Run PortQueryUI.exe
- Select `PaperCut` or `AutoStore` from drop down and run

Ports should return `LISTENING`, or at the vey least `FILTERED`. Ports that return `NOT LISTENING` are blocked.

**Update**: You can now also run the `Check_PaperCutMF_Local_Ports_From_Client.ps1` and `Check_AutoStore_Ports.ps1` scripts instead of running `PortQueryUI.exe`

# Checking external PaperCut ports (for Integrated Scanning or OCR)

- Run the `Check_PaperCutMF_Cloud_Services_Connectivity.ps1` on the server as Administrator.

Please note: If you get an error about the execution policy, run the following command in an elevated PowerShell session:

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`

# Contributions

If you wish to contribute to the code, ask for an invite at https://github.com/ahake/PortCheckerConfigurations or fork the repository. You can also raise issues at https://github.com/ahake/PortCheckerConfigurations/issues

# Roadmap

Further configuration may be added over time. I am also looking at combining the UI and the Powershell script over time, and making the reliance on PortQry obsolete.
