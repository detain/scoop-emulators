<?php
$home = '🏠';
$dl = '📥';
$list = '';
$table = "| Name | {$home} | {$dl} | Version | Description |\n";
$table .= "|-|-|-|-|-|\n";
foreach (glob(__DIR__.'/../bucket/*.json') as $fileName) {
    $json = json_decode(file_get_contents($fileName), true);
    $name = basename($fileName, '.json');
    if (!isset($json['description']) || empty($json['description']) || !isset($json['homepage']) || empty($json['homepage']))
        continue;
    $json['description'] = trim($json['description']);
    $link = $json['url'] ?? $json['architecture']['64bit']['url'];
    $table .= "| [{$name}](./bucket/{$name}.json) | [{$home}]({$json['homepage']}) | [{$dl}](".(is_array($link) ? implode(") [{$dl}](", $link) : $link).") | {$json['version']} | {$json['description']} |\n";
    $list .= "* [{$home}]({$json['homepage']}) [{$dl}](".(is_array($link) ? implode(") [{$dl}](", $link) : $link).") [{$name}](./bucket/{$name}.json) _{$json['version']}_ {$json['description']}\n";
}
$readme = preg_replace('/(## Emulator List\r?\n\r?\n)(.*)(\r?\n## Development Notes)/msuU', "\$1{$list}\$3", file_get_contents(__DIR__.'/../README.md'));
file_put_contents(__DIR__.'/../README.md', $readme);

