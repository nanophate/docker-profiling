# Runs prior to every test
setup() {
    git submodule sync
    git submodule update --init
    load 'test_helper/bats-support/load' # this is required by bats-assert!
    load 'test_helper/bats-assert/load'
}

@test '1: Check script to work' {
    run sh ./src/scripts/network.sh
    [ "$status" -eq 0 ]
    assert_output --partial 'recive'
    assert_output --partial 'transmit'
}
