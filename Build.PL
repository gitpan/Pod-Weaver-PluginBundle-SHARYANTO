
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "SHARYANTO's default Pod::Weaver config",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Pod-Weaver-PluginBundle-SHARYANTO",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Pod::Weaver::PluginBundle::SHARYANTO",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Pod::Weaver::Config::Assembler" => 0,
    "Pod::Weaver::Plugin::Encoding" => 0,
    "Pod::Weaver::Plugin::EnsureUniqueSections" => 0,
    "Pod::Weaver::Plugin::Perinci" => 0,
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
