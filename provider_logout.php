<?php

include 'includes/connection.php';

session_start();
session_unset();
session_destroy();

header('location:digitalmarketing.php');

?>