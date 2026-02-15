from pathlib import Path
from distutils.util import strtobool

import argparse
import os
import platform
import subprocess
import shutil
import hashlib
import traceback

import distutils.log
import distutils.dir_util


OUTPUT_FILE_NAME = "BrawlhallaAir.swf"


def md5_update_from_dir(directory, hash_instance):
    assert Path(directory).is_dir()
    for path in sorted(Path(directory).iterdir(), key=lambda p: str(p).lower()):
        hash_instance.update(path.name.encode())
        if path.is_file():
            with open(path, "rb") as f:
                for chunk in iter(lambda: f.read(4096), b""):
                    hash_instance.update(chunk)
        elif path.is_dir():
            hash_instance = md5_update_from_dir(path, hash_instance)
    return hash_instance


def md5_dir(directory):
    return md5_update_from_dir(directory, hashlib.md5()).hexdigest()


def is_exe(fpath):
    return os.path.isfile(fpath) and os.access(fpath, os.X_OK)


def which(program):
    fpath, _ = os.path.split(program)
    if fpath:
        if is_exe(program):
            return [program]
    else:
        results = []
        for path in os.environ["PATH"].split(os.pathsep):
            exe_file = os.path.join(path, program)
            if is_exe(exe_file):
                results.append(exe_file)
        return results

    return None


def dir_path(string):
    if os.path.isdir(string):
        return string
    else:
        raise NotADirectoryError(string)


def get_java():
    java_path = shutil.which("java")

    if java_path is None:
        print("[ERROR] java is not in path!")
        return exit()

    return java_path


def get_mxmlc_paths():
    mxmlc_path = which("mxmlc")

    if mxmlc_path is None:
        print("[ERROR] MXMLC is not in path!")
        return exit()

    return mxmlc_path


def get_air_sdk():
    mxmlc_paths = get_mxmlc_paths()
    for mxmlc_path in mxmlc_paths:
        bin_path = os.path.dirname(mxmlc_path)

        if not bin_path.endswith("bin"):
            continue

        sdk_path = os.path.dirname(bin_path)
        lib_path = os.path.join(sdk_path, "lib")

        if not os.path.exists(lib_path):
            continue

        mxmlc_cli_path = os.path.join(lib_path, "mxmlc-cli.jar")

        if os.path.exists(mxmlc_cli_path) and os.path.isfile(mxmlc_cli_path):
            return sdk_path

    print("[ERROR] unable to find air sdk")
    return exit()


def get_current_directory():
    return os.path.dirname(os.path.realpath(__file__))


def get_output_directory():
    current_dir = get_current_directory()
    if platform.system() == "Darwin":
        return os.path.join(current_dir, "bin", "Brawlhalla.app", "Contents", "Resources")
    else:
        return os.path.join(current_dir, "bin")


def check_directory_newer(source_dir):
    current_hash = md5_dir(source_dir)

    cache_dir = os.path.join(get_current_directory(), ".build_cache")
    if not os.path.exists(cache_dir):
        os.mkdir(cache_dir)

    hash_file = os.path.join(cache_dir, "src_hash")
    if not os.path.isfile(hash_file):
        with open(hash_file, "w") as file:
            file.write(current_hash)
        return True
    else:
        with open(hash_file, "r") as file:
            previous_hash = file.read()

        if previous_hash != current_hash:
            with open(hash_file, "w") as file:
                file.write(current_hash)
            return True
        return False


def main():
    parser = argparse.ArgumentParser(description="Build Rawlhalla.")

    parser.add_argument(
        "--release", help="compile in release mode", action="store_false", dest="debug", default=True)

    parser.add_argument("--advanced-telemetry", help="enable or disable advanced-telemetry",
                        metavar="<bool>", type=strtobool, default=None)

    parser.add_argument("--strict", help="enable or disable strict compiling",
                        metavar="<bool>", type=strtobool, default=False)

    parser.add_argument("--java", help="set java path",
                        type=dir_path, metavar="<path>")

    parser.add_argument("--sdk", help="set sdk path",
                        type=dir_path, metavar="<path>")

    parser.add_argument("--output", help="set output path",
                        type=dir_path, metavar="<path>")

    parser.add_argument(
        "--launch", help='launch the game after building', action="store_true")

    parser.add_argument(
        "--skip-swz", help="skips copying of swz files", action="store_true")

    parser.add_argument(
        "--skip-compile", help="skips compiling actionscript", action="store_true")

    parser.add_argument(
        "--skip-build", help="skip building the application", action="store_true")

    parser.add_argument(
        "--changed", help="skip building the application if the src directory has not changed", action="store_true")

    args = parser.parse_args()

    args.advanced_telemetry = args.debug if args.advanced_telemetry == None else args.advanced_telemetry

    java_path = args.java or get_java()
    sdk_path = args.sdk or get_air_sdk()
    output_dir = args.output or get_output_directory()

    source_dir = os.path.join(get_current_directory(), "src")
    input_file = os.path.join(source_dir, "BrawlhallaAir.as")
    output_path = os.path.join(output_dir, OUTPUT_FILE_NAME)

    if not args.skip_build and (not args.changed or check_directory_newer(source_dir)):
        # Compile

        if not args.skip_compile:
            print("[STATUS] Compiling")

            # java args
            shell_args = [java_path]

            if platform.system() == "Darwin":
                shell_args.append("-Dapple.awt.UIElement=true")

            shell_args.extend([
                f"-Dflexcompiler={sdk_path}",
                f"-Dflexlib={os.path.join(sdk_path, 'frameworks')}",
                "-jar",
                os.path.join(sdk_path, 'lib', 'mxmlc-cli.jar')
            ])

            # mxmlc args
            if args.debug:
                shell_args.append("--debug=true")

            if args.advanced_telemetry:
                shell_args.append("--advanced-telemetry=true")

            shell_args.append("+configname=air")
            shell_args.append(f"--source-path+={source_dir}")
            shell_args.append(f"--output={output_path}")
            shell_args.append(f"--strict={'true' if args.strict else 'false'}")

            if platform.system() == "Windows":
                shell_args.append("-swf-version=28")

            shell_args.extend((
                "--",
                input_file
            ))

            exit_code = subprocess.call(shell_args)

            if exit_code != 0:
                print(f"[ERROR] mxmlc returned status code {exit_code}")
                exit()

        # Copy over SWZ files

        if not args.skip_swz:
            print("[STATUS] Copying updated SWZ files.")

            input_swz_dir = os.path.join(source_dir, "swz")
            output_swz_dir = os.path.join(output_dir, "swz")

            distutils.log.set_verbosity(distutils.log.DEBUG)
            distutils.dir_util.copy_tree(
                input_swz_dir,
                output_swz_dir,
                update=1,
                verbose=1,
            )

    # Launch
    if args.launch:
        print("[STATUS] Launching Brawlhalla")

        if args.debug:
            adl_path = os.path.join(
                sdk_path, "bin", "adl" + (".exe" if platform.system() == "Windows" else ""))
            status_code = subprocess.call(
                [adl_path, os.path.join(output_dir, "BrawlhallaAir.xml"), output_dir])
            print(f"[STATUS] ADL has exited with status code {status_code}")
        else:
            if platform.system() == "Windows":
                executable_path = os.path.join(
                    output_dir, "BrawlhallaGame.exe")
            else:
                executable_path = os.path.join(
                    output_dir, "../MacOS/Brawlhalla")
            status_code = subprocess.call(executable_path)
            print(f"Brawlhalla has exited with status code {status_code}")

    # Finish

    print("[STATUS] Completed.")


if __name__ == "__main__":
    main()
