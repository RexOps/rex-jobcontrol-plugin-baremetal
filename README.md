# Baremetal Plugin for Rex JobControl


This is a baremetal plugin for Rex JobControl to provision Baremetal machines. Currently this is just a stub.


## INSTALLATION

Currently this plugin is in early development status. So you have to clone the git repository.

```
git clone https://github.com/RexOps/rex-jobcontrol-plugin-baremetal.git
```

Then you can load the plugin from the jobcontrol configuration file.

```
{
  plugins => [
    'Rex::JobControl::Provision::Baremetal',
  ],
}
```

Before the restart of Rex JobControl you have to update the PERL5LIB env variable to point to the plugin repository:

```
export PERL5LIB=/path/to/rex-jobcontrol-plugin-baremetal/lib:$PERL5LIB
```
