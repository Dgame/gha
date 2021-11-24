<?php

class User {
    public readonly int $uid;

    public function __construct(int $uid) {
        $this->uid = $uid;
    }
}
