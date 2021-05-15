node default {
  file {'/root/README':
    ensure => file,
    content => 'Ejemplo de puppet content',
    }
}
