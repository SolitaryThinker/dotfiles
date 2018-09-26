#!/bin/bash

error() {
    echo "$@" 1>&2
    exit 1
}

setup() {
    # update package lists
    sudo apt-get update
}

install_packages() {

bad_usage() {
    usage 1>&2
    exit 1
}

main() {
    # parse args
    local opts="fc"
    local getopt_out=$(getopt --name "${0##*/}" \
        --options "${opts}" -- "${@}") &&
        eval set -- "${getopt_out}" ||
        bad_usage

    # init flags
    local checkout=false
    local force=false

    # read flag values
    while [ ${#} -ne 0 ]; do
        case ${1} in
            -c) checkout=true; shift;;
            -f) force=true; shift;;
            --) shift; break;;
        esac
    done

    # get module names
