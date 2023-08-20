New-AzResourceGroup -Name rg007 -location WestUS
$MyvNet01 = New-AzVirtualNetwork -ResourceGroupName rgnew -Location eastUS -Name vnet09 -AddressPrefix 10.0.0.0/10
$Mysubnet01 = Add-AzVirtualNetworkSubnetConfig -Name mysubnet01-AddressPrefix 10.0.0.0/9 -VirtualNetwork $myvnet01
$Mysubnet01 | Set-AzVirtualNetwork    
	$Mysubnet02 = Add-AzVirtualNetworkSubnetConfig -Name mysubnet02 -AddressPrefix 10.64.0.0/10 -VirtualNetwork $myvnet01
	$Mysubnet02 | Set-AzVirtualNetwork
$Mysubnet03 = Add-AzVirtualNetworkSubnetConfig -Name mysubnet03 -AddressPrefix 10.128.0.0/10 -VirtualNetwork $myvnet01
$Mysubnet03 | Set-AzVirtualNetwork
$Mysubnet04 = Add-AzVirtualNetworkSubnetConfig -Name mysubnet04 -AddressPrefix 10.192.0.0/10 -VirtualNetwork $myvnet01
	$Mysubnet04 | Set-AzVirtualNetwork