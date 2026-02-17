#!/usr/bin/env python3

import argparse
import logging

import requests


def resolve_build(build: str) -> str:
    """Resolve 'latest' to the actual build version from wago.tools."""
    if build.lower() != 'latest':
        return build
    logging.info("Fetching latest build from wago.tools...")
    res = requests.get("https://wago.tools/api/builds")
    res.raise_for_status()
    builds = res.json()["wow"]
    latest = builds[0]["version"]
    logging.info("Latest build: %s", latest)
    return latest


def cmd_generate(args):
    """Generate addon data (JSON + Lua) from DBC files."""
    from lib.dbc_file import DBC
    from lib.generate_addon_data import AddonDataGenerator
    generator = AddonDataGenerator(DBC(args.build))
    addon_data = generator.generate()
    AddonDataGenerator.write(addon_data, args.build)


def cmd_test(args):
    """Run tests comparing algorithm output against game-extracted data."""
    from test.test import Test
    algorithms = ['dbc', 'addon', 'lua'] if args.algorithm == 'all' else [args.algorithm]
    test = Test(args.build)
    test.main(algorithms)


def cmd_calc(args):
    """Calculate item level from a WoW item link or item info."""
    if args.algorithm == 'addon':
        from lib.addon_data_algorithm import AddonDataAlgorithm
        algorithm = AddonDataAlgorithm(args.build)
    else:
        from lib.dbc_file import DBC
        from lib.direct_dbc_algorithm import DirectDBCAlgorithm
        algorithm = DirectDBCAlgorithm(DBC(args.build))

    if args.item_id is not None:
        bonus_ids = args.bonus_ids or []
        item_level = algorithm.process_item_info(
            args.item_id, bonus_ids,
            player_level=args.player_level,
            content_tuning_id=args.content_tuning_id,
        )
        print(f"Item {args.item_id}: iLvl {item_level}")
    else:
        from lib.algorithm import Algorithm
        for link in args.links:
            item_id = Algorithm.get_item_id_from_link(link)
            item_level = algorithm.process_item(link)
            print(f"Item {item_id}: iLvl {item_level}")


def main():
    parser = argparse.ArgumentParser(
        prog='bonus_id_tool',
        description='BonusIdTool - WoW item level calculation from DBC files',
    )
    subparsers = parser.add_subparsers(dest='command', required=True)

    p_generate = subparsers.add_parser('generate', help='Generate addon data (JSON + Lua) from DBC files')
    p_generate.add_argument('build', nargs='?', default='latest', help='Game build version (default: latest)')
    p_generate.set_defaults(func=cmd_generate)

    p_test = subparsers.add_parser('test', help='Run tests comparing algorithm output against game data')
    p_test.add_argument('build', nargs='?', default='latest', help='Game build version (default: latest)')
    p_test.add_argument('-a', '--algorithm', choices=['dbc', 'addon', 'lua', 'all'], default='all', help='Which algorithm to test (default: all)')
    p_test.set_defaults(func=cmd_test)

    p_calc = subparsers.add_parser('calc', help='Calculate item level from WoW item link(s) or item info')
    p_calc.add_argument('build', nargs='?', default='latest', help='Game build version (default: latest)')
    p_calc.add_argument('links', nargs='*', help='WoW item link(s)')
    p_calc.add_argument('-i', '--item-id', type=int, help='Item ID (use instead of links)')
    p_calc.add_argument('-b', '--bonus-ids', type=lambda s: [int(x) for x in s.split(',')], default=[], help='Comma-separated bonus IDs (e.g. 1234,5678)')
    p_calc.add_argument('-p', '--player-level', type=int, default=0, help='Player level modifier (type 9)')
    p_calc.add_argument('-c', '--content-tuning-id', type=int, default=0, help='Content tuning ID modifier (type 28)')
    p_calc.add_argument('-a', '--algorithm', choices=['dbc', 'addon'], default='dbc', help='Algorithm to use (default: dbc)')
    p_calc.set_defaults(func=cmd_calc)

    args = parser.parse_args()

    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s.%(msecs)03d %(levelname)s [%(module)s:%(lineno)d] %(message)s',
        datefmt='%H:%M:%S',
    )

    if hasattr(args, 'build'):
        args.build = resolve_build(args.build)

    args.func(args)


if __name__ == '__main__':
    main()
