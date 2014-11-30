#
# (c) Jan Gehring <jan.gehring@gmail.com>
#
# vim: set ts=2 sw=2 tw=0:
# vim: set expandtab:

use strict;
use warnings;

package Rex::JobControl::Provision::Baremetal;

use Moo;
use YAML;
use namespace::clean;
use Rex::JobControl::Provision;
use Data::Dumper;

require Rex::Commands;
use Rex::Commands::Virtualization;

with 'Rex::JobControl::Provision::Base', 'Rex::JobControl::Plugin';

Rex::JobControl::Provision->register_type('baremetal');

has host      => ( is => 'ro' );
has name      => ( is => 'ro' );

sub create {
  my ($self) = @_;
  $self->project->app->log->debug(
    "Creating a baremetal machine. (stub)");
  return {};
}

sub remove {
  my ($self) = @_;

  $self->project->app->log->debug(
    "Removing a baremetal machine. (stub)");
}

sub get_data {
  my ($self) = @_;
  return {};
}

sub get_hosts {
  my ($self) = @_;
  return $self->project->get_nodes(
    sub {
      my ($file) = @_;
      $self->project->app->log->debug(
        "Reading $file to see if it is a Baremetal host.");
      my $ref = YAML::LoadFile($file);
      if ( exists $ref->{type}
        && $ref->{type} eq "baremetal" )
      {
        return 1;
      }
      else {
        return 0;
      }
    }
  );
}

1;
