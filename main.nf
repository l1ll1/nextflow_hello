#!/usr/bin/env nextflow

process sayHello {
    input:
    val x

    output:
    stdout

    script:
    """
    echo '${x} world!'
    hostname
    env
    """
}

workflow {
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
