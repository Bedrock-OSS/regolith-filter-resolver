<!-- THIS FILE IS AUTOMATICALLY GENERATED BY scraper.nim DON'T EDIT IT MANUALLY! -->

# Regolith Filter Resolver
This repository contains the default filter resolver for [Regolith](https://github.com/Bedrock-OSS/regolith). It is used to enable installing Regolith filters using their short names instead of full URLs. You can read more about resolvers in Regolith documentation.

## Adding Your Filters to the Resolver
You can add your own filters to the resolver by creating a pull request to this repository that adds your repository URL to the `repos.json` file. This will mark your repository as a known filter repository, and add all filters from there to the resolver.

## Known Repositories
You can use this list to discover new filters to use with Regolith, below you can find a list of known standard filters (from Bedrock-OSS) and community filters.
## Standard Filters

This list contains filters maintained by Bedrock-OSS.

| Filter | Description |
| ------ | ----------- |
| [blockbench_convert](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/blockbench_convert) | Converts blockbench models into `.geometry.json` files. |
| [bump_manifest](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/bump_manifest) | Bumps the manifest version in your RP and BP. Good for multiplayer testing where you need to avoid pack-caching issues. |
| [filter_tester](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/filter_tester) | Meant to be used by the filter developers to test other filters. It compares the expected results with the files generated by Regolith. |
| [fix_emissive](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/fix_emissive) | Fixes emissive issues in your textures, by removing the color data from fully transparent pixels. |
| [gametests](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/gametests) | Compiles gametests into pack. |
| [json_cleaner](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/json_cleaner) | Removes comments from all json files in the project. Useful, since some filters cannot understand files with comments. |
| [json_convert](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/json_convert) | Converts JSON5 and Hjson files into standard JSON files. |
| [name_ninja](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/name_ninja) | Automatically generates entity, block, spawn egg, and item names, based on a custom 'name' field, or on the entities identifier. |
| [texture_convert](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/texture_convert) | Converts popular image editor file formats, such as .psd to .png. |
| [texture_list](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/texture_list) | Automatically creates the `texture_list.json` file, based on the images you've added into your resource pack. |
| [type_gen](https://github.com/Bedrock-OSS/regolith-filters/tree/HEAD/type_gen) | Generates Files.d.ts file with some relevant constants from the current pack. |
## Community Filters

This list contains filters created by the community.

> [!WARNING]
> The filters in this list are not maintained by Bedrock-OSS, use them at your own risk.

| Filter | Author |  Description |
| ------ | ------ | ------------ |
| [bedrock_bundler](https://github.com/bogumidu/regolith-library/tree/HEAD/bedrock_bundler) | bogumidu | Bundles animation_controllers, animations, models and render_controllers into single files. |
| [e-backup](https://github.com/cda94581/regolith-filters/tree/HEAD/e-backup) | cda94581 |  |
| [minimize](https://github.com/cda94581/regolith-filters/tree/HEAD/minimize) | cda94581 |  |
| [namespace](https://github.com/cda94581/regolith-filters/tree/HEAD/namespace) | cda94581 |  |
| [scalable-teams](https://github.com/cda94581/regolith-premade-addons/tree/HEAD/scalable-teams) | cda94581 |  |
| [classes](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/classes) | evilguy50 | filter for adding OOP class like structure to functions |
| [dash](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/dash) | evilguy50 | filter for installing / running the bridge dash compiler. |
| [ds_store](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/ds_store) | evilguy50 | filter for removing .DS_Store files |
| [new_exec](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/new_exec) | evilguy50 | filter for converting old execute commands to the 1.19.10 format |
| [shorthand](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/shorthand) | evilguy50 | filter for having shorthand syntax inside of functions |
| [strip](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/strip) | evilguy50 | filter for striping comments from json, mcfunction, and lang files |
| [style_lint](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/style_lint) | evilguy50 | filter for automatic project styling |
| [title_ui](https://github.com/evilguy50/my-regolith-filters/tree/HEAD/title_ui) | evilguy50 | filter for generating title ui bindings |
| [debug_log](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/debug_log) | Hatchibombotar |  |
| [file_freedom](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/file_freedom) | Hatchibombotar |  |
| [functioner](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/functioner) | Hatchibombotar |  |
| [import](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/import) | Hatchibombotar |  |
| [init-full](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/init-full) | Hatchibombotar |  |
| [link_manifests](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/link_manifests) | Hatchibombotar |  |
| [metadata](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/metadata) | Hatchibombotar |  |
| [molang_insert](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/molang_insert) | Hatchibombotar |  |
| [pack_commons](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/pack_commons) | Hatchibombotar |  |
| [package](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/package) | Hatchibombotar |  |
| [simple_blocks](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/simple_blocks) | Hatchibombotar |  |
| [template_example](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/template_example) | Hatchibombotar |  |
| [templater](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/templater) | Hatchibombotar |  |
| [typescript-json](https://github.com/Hatchibombotar/useful-regolith-filters/tree/HEAD/typescript-json) | Hatchibombotar |  |
| [esbuild](https://github.com/ink0rr/regolith-filters/tree/HEAD/esbuild) | ink0rr |  |
| [esbuild_deno](https://github.com/ink0rr/regolith-filters/tree/HEAD/esbuild_deno) | ink0rr |  |
| [janitor](https://github.com/ink0rr/regolith-filters/tree/HEAD/janitor) | ink0rr |  |
| [lazuli](https://github.com/ink0rr/regolith-filters/tree/HEAD/lazuli) | ink0rr |  |
| [spawn_egg](https://github.com/ink0rr/regolith-filters/tree/HEAD/spawn_egg) | ink0rr |  |
| [sync_manifest](https://github.com/ink0rr/regolith-filters/tree/HEAD/sync_manifest) | ink0rr |  |
| [csharp-compiler](https://github.com/llgava/regolith-filters/tree/HEAD/csharp-compiler) | llgava | Automatically build a .dll file for all C# local filters on the project. |
| [enderchest](https://github.com/llgava/regolith-filters/tree/HEAD/enderchest) | llgava | Encrypt your Minecraft code with AES symmetric algorithm. |
| [JSon-cleaner](https://github.com/llgava/regolith-filters/tree/HEAD/JSon-cleaner) | llgava | A fork of the original filter 'json_cleaner' in order to make it compatible with JS files. |
| [rego-glyph](https://github.com/llgava/regolith-filters/tree/HEAD/rego-glyph) | llgava | Generates a markdown containing all icon configuration in the glyph_E1.png image. |
| [rego-level](https://github.com/llgava/regolith-filters/tree/HEAD/rego-level) | llgava | Remove the old world files to new ones on every build. (Need game restart every time) |
| [rego-remover](https://github.com/llgava/regolith-filters/tree/HEAD/rego-remover) | llgava | Remove extra files or objects from the build such as: .bbmode, .ase, Geckolib Animation Artifacts and Aseprite Flipbook from invalid paths. |
| [esbuild_executor](https://github.com/MajestikButter/Regolith-Filters/tree/HEAD/esbuild_executor) | MajestikButter |  |
| [js_formatter](https://github.com/MajestikButter/Regolith-Filters/tree/HEAD/js_formatter) | MajestikButter |  |
| [json_formatter](https://github.com/MajestikButter/Regolith-Filters/tree/HEAD/json_formatter) | MajestikButter |  |
| [ts_transpiler](https://github.com/MajestikButter/Regolith-Filters/tree/HEAD/ts_transpiler) | MajestikButter |  |
| [export](https://github.com/Makercamp-SRLs/Regolith-filters/tree/HEAD/export) | Makercamp-SRLs |  |
| [command_lang](https://github.com/MCDevKit/regolith-library/tree/HEAD/command_lang) | MCDevKit | Compiles the CommandLang programming language into .mcfunction files. |
| [json_templating_engine](https://github.com/MCDevKit/regolith-library/tree/HEAD/json_templating_engine) | MCDevKit | Compiles JSON templates into JSON files. Especially useful for making reusable pieces of content or large amounts of JSON files. |
| [jsonte](https://github.com/MCDevKit/regolith-library/tree/HEAD/jsonte) | MCDevKit |  |
| [mcdef_gen](https://github.com/MCDevKit/regolith-library/tree/HEAD/mcdef_gen) | MCDevKit | Generates a .mcdefinition file. |
| [packer](https://github.com/MCDevKit/regolith-library/tree/HEAD/packer) | MCDevKit | Packs world with packs into a .mcaddon file. |
| [sanity_check](https://github.com/MCDevKit/regolith-library/tree/HEAD/sanity_check) | MCDevKit | Checks common issues with addons. |
| [whisk](https://github.com/MCDevKit/regolith-library/tree/HEAD/whisk) | MCDevKit | Copies contents of a GitHub repo into current addon. |
| [digger](https://github.com/MedicalJewel105/regolilters/tree/HEAD/digger) | MedicalJewel105 | Simple filter that adds vanilla (and custom) blocks to your tools in 1.16.100+ version. |
| [item_scale](https://github.com/MedicalJewel105/regolilters/tree/HEAD/item_scale) | MedicalJewel105 | Generates render offsets for 1.16.100+ items with textures bigger than 16x16. |
| [custom_project](https://github.com/Nusiq/regolith-filters/tree/HEAD/custom_project) | Nusiq | A filter to organize your project files based on their extensions. |
| [debug_say_function_name](https://github.com/Nusiq/regolith-filters/tree/HEAD/debug_say_function_name) | Nusiq | A tool for adding debug 'tellraw' commands to your *.mcfunction files. |
| [json_template](https://github.com/Nusiq/regolith-filters/tree/HEAD/json_template) | Nusiq | JSON templating tool based on special strings with Python syntax. |
| [pytemplate](https://github.com/Nusiq/regolith-filters/tree/HEAD/pytemplate) | Nusiq | JSON templating tool based on Python list and dict comprehension syntax. |
| [run_counter](https://github.com/Nusiq/regolith-filters/tree/HEAD/run_counter) | Nusiq | A filter that counts the number of Regolith runs and exports it to a file. |
| [subfunctions](https://github.com/Nusiq/regolith-filters/tree/HEAD/subfunctions) | Nusiq | An extension to the *.mcfunction file syntax. |
| [system_template](https://github.com/Nusiq/regolith-filters/tree/HEAD/system_template) | Nusiq | A filter for grouping your project files into folders based on what they do together instead of what they are. |
| [system_template_esbuild](https://github.com/Nusiq/regolith-filters/tree/HEAD/system_template_esbuild) | Nusiq | Script compiler that uses Esbuild designed to be used with the System Tempalte filter. |
| [module_importer](https://github.com/ShiCheng-Lu/Regolith-Filters/tree/HEAD/module_importer) | ShiCheng-Lu |  |
| [digger_gen](https://github.com/SirLich/regolith-filters/tree/HEAD/digger_gen) | SirLich | Automatically generates `minecraft:digger` based on some meta-data. |
| [echo](https://github.com/SirLich/echo-npc-regolith/tree/HEAD/echo) | SirLich | An old-fashioned automation tool for generating state-driven NPCs. |
| [particulate](https://github.com/SirLich/regolith-filters/tree/HEAD/particulate) | SirLich | Creates particle simulations of entity geometry. |
| [poeditor_integration](https://github.com/SirLich/regolith-filters/tree/HEAD/poeditor_integration) | SirLich | Synchronizes your .lang project files with poeditor.com |
| [adk](https://github.com/SmokeyStack/adk/tree/HEAD/adk) | SmokeyStack | Create add-ons for Minecraft without touching JSON |
| [NBTEnchant](https://github.com/SmokeyStack/MCScripts/tree/HEAD/NBTEnchant) | SmokeyStack | This script is used to generate .mcstructure files containing edited nbt data that is currently not possible to do ingame |
