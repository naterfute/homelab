To get pxe boot working in proxmox ensure the following for each vm
- Bios
	- ovmf (UEFI)
- machine
	- q35
- Network
	- Same vlan as other nodes/master machines
	- Disabled firewall
	- Known mac address
	- Same bridge as other nodes/master machines


> [!IMPORTANT]
> - Once machine is setup you **MUST** Disable Secure boot
> - They also need to be on the same FUCKING VLAN DUMBASS

If all of these conditions are met, as long as no ports are conflicting when you run make in the khuedoan homelab, and it started the ephemeral pxe server it should all work and boot!
