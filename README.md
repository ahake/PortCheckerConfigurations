# PortQry

This is a hybrid collection of Microsoft's **PortQry** and **PortQryv2** tools (supplied for ease of use)
**PortQry v2** is a Microsoft Utility that can be download from [here](https://www.microsoft.com/en-au/download/details.aspx?id=17148)
The `PortQueryUI` has been taken from **PortQry v1**.

# Checking PaperCut or AutoStore ports

- Install folder at remote location where problem occurs
- Run PortQueryUI.exe
- Select `PaperCut` or `AutoStore` from drop down and run

Ports should return `LISTENING`, or at the vey least `FILTERED`. Ports that return `NOT LISTENING` are blocked.

# Checking external PaperCut ports (for Integrated Scanning or OCR)

- Run the `Check_PaperCutMF_Cloud_Services_Connectivity.ps1` on the server as Administrator.

Please note: If you get an error about the execution policy, run the following command in an elevated PowerShell session:

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`
