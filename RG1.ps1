New-AzResourceGroup -ResourceGroupName rg007 -Location EastUS
$MyvNet01 = New-AzVirtualNetwork -ResourceGroupName rg007 -Location EastUS -Name vnet007 -AddressPrefix 10.0.0.0/8
$Mysubnet01 = Add-AzVirtualNetworkSubnetConfig -Name sn1 -AddressPrefix 10.0.0.0/9 -VirtualNetwork $myvnet01
$Mysubnet01 | Set-AzVirtualNetwork    
$Mysubnet02 = Add-AzVirtualNetworkSubnetConfig -Name sn2 -AddressPrefix 10.128.0.0/9 -VirtualNetwork $myvnet01
$Mysubnet02 | Set-AzVirtualNetwork 