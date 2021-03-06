properties {
    $sln_file_name = "GiveCRM.sln"
	$configuration = "release"
}

#Loading external functions file
.\functions.ps1

#SetUp Local Variables
Framework "4.0"
$base_dir = resolve-path .
$package_dir = "$base_dir\..\package\"
$src_folder = "$base_dir\..\src"
$web_package_location = "$src_folder\GiveCRM.Web\obj\$configuration\Package\PackageTmp"

task default -depends Compile

task Compile {
    run_msbuild "$src_folder\$sln_file_name"
}