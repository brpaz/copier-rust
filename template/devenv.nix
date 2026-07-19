{
  pkgs,
  lib,
  config,
  ...
}: {
  dotenv.enable = true;

  # https://devenv.sh/packages/
  packages = with pkgs; [
    cargo-watch
    commitlint-rs
    go-task
    lefthook
  ];

  # https://devenv.sh/languages/
  languages.rust = {
    enable = true;
    toolchainFile = ./rust-toolchain.toml;
  };

  # https://devenv.sh/processes/
  processes.cargo-watch.exec = "cargo watch -x check";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  scripts.hello.exec = ''
  '';

  enterShell = ''
    if [ ! -f .env ]; then
      cp .env.example .env
    fi
    rustc --version
    lefthook install
  '';

  # Expose the package as an output for testing
  # outputs = {
  #   rust-app = config.languages.rust.import ./ {};
  # };

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
    cargo test
  '';

  # https://devenv.sh/git-hooks/
  # git-hooks.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
