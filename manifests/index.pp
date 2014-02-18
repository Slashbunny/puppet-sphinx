# Runs the sphinxsearch indexer for all defined indexes, to be used after
# installing the package and config file. Regular indexing should be done with
# cron or similar
class sphinx::index($init_index)
{
  if ($init_index) {
    exec { 'sphinx_init_indexes':
      command     => '/usr/bin/indexer --all --rotate',
      logoutput   => true,
      refreshonly => true,
      timeout     => 0,
    }
  }
}
