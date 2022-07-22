<?php
$home = '🏠';
$dl = '📥';
$table = "| Name | {$home} | {$dl} | Version | Description |\n";
$table .= "|-|-|-|-|-|\n";
foreach (glob(__DIR__.'/../bucket/*.json') as $fileName) {
	$json = json_decode(file_get_contents($fileName), true);
	$name = basename($fileName, '.json');
	if (!isset($json['description']) || empty($json['description']) || !isset($json['homepage']) || empty($json['homepage']))
		continue;
	$link = $json['url'] ?? $json['architecture']['64bit']['url'];
	$table .= "| [{$name}](./bucket/{$name}.json) | [{$home}]({$json['homepage']}) | [{$dl}](".(is_array($link) ? implode(") [{$dl}](", $link) : $link).") | {$json['version']} | {$json['description']} |\n";
}
$readme = file_get_contents(__DIR__.'/../README.md');
preg_match_all('/^## Emulator List.*^## Development Notes/msuU', $readme, $matches);
$readme = str_replace($matches[0][0], "## Emulator List\n\n{$table}\n## Development Notes", $readme);
file_put_contents(__DIR__.'/../README.md', $readme);

