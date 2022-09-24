<?php
  print "This is version 1 of the app. I am running on host -> " . gethostname() ." (" . $_SERVER['SERVER_ADDR'] . ")" . "\n";
  echo "<br/><br/>";
  print "The value of the variable MY_STRING is " .$_ENV["MY_STRING] . "\n";
?>
