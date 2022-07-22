<?php
$home = '🏠';
$table = "| Name | {$home} | Description |\n";
$table .= "|-|-|-|\n";
foreach (glob(__DIR__.'/../bucket/*.json') as $fileName) {
	$json = json_decode(file_get_contents($fileName), true);
	$name = basename($fileName, '.json');
	if (!isset($json['description']) || empty($json['description']) || !isset($json['homepage']) || empty($json['homepage']))
		continue;
	$table .= "| [{$name}](./bucket/{$name}.json) | [{$home}]({$json['homepage']}) | {$json['description']} |\n";
}
$readme = file_get_contents(__DIR__.'/../README.md');
preg_match_all('/^## Emulator List.*^## Development Notes/msuU', $readme, $matches);
$readme = str_replace($matches[0][0], "## Emulator List\n\n{$table}\n## Development Notes", $readme);
file_put_contents(__DIR__.'/../README.md', $readme);

