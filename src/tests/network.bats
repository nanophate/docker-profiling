# Runs prior to every test
setup() {
    load 'test_helper/bats-support/load' # this is required by bats-assert!
    load 'test_helper/bats-assert/load'
}

@test '1: Check script to work' {
    run sh ./src/scripts/network.sh
    [ "$status" -eq 0 ]
    assert_output --partial 'recive 0 MB'
    assert_output --partial 'transmit 0 MB'
}
