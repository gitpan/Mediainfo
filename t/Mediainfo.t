use Test::More tests => 6;
BEGIN { use_ok('Mediainfo') };

use Mediainfo;
my $file = "t/media/foo.mpg";
my $foo_info = new Mediainfo("filename" => $file);
is( $foo_info->{filename},     "t/media/foo.mpg", "filename");
is( $foo_info->{container},    "mpeg-ps",         "container");
is( $foo_info->{bitrate},      368640,            "bitrate");
is( $foo_info->{video_codec},  "mpeg-1v",         "video_codec");
is( $foo_info->{video_length}, 400,               "video_length");


