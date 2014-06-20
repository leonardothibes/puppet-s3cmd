class s3cmd::dependencies
{
    if $osfamily != 'Debian' {
        fail("Unsupported platform: ${osfamily}/${operatingsystem}")
    }   
    require wget
}
