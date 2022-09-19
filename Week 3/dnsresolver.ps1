param ($network, $server)
$range = 1..254

forEach($r in $range) {
  Resolve-DnsName -DnsOnly "$network.$r" -Server "$server" -ErrorAction Ignore
}
