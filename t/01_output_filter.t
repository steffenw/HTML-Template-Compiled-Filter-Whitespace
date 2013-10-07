#!perl -T

use strict;
use warnings;

use Test::More tests => 2 + 1;
use Test::NoWarnings;

BEGIN {
    use_ok('HTML::Template::Compiled::Filter::Whitespace', 'whitespace_filter');
}

my $unclean_html = <<'EOT';
<html>
 <body>
  <select name="select" size="10">
   <option value="value="text  n">text  n</option>
  </select>

<pre>
 xxx

</pre>

 </body>
</html>
EOT

my $clean_html = <<'EOT';
<html>
<body>
<select name="select" size="10">
<option value="value="text  n">text n</option>
</select>
<pre>
 xxx

</pre>
</body>
</html>
EOT

is(
    whitespace_filter($unclean_html),
    $clean_html,
    'filtered',
);
