

# Define a fish completion script for Flatpak remove
function __fish_flatpak_remove
  set -l installed_apps (flatpak list --app --columns=app)
  for app in $installed_apps
    complete -c flatpak -n '__fish_seen_subcommand_from remove' -a $app -d "Uninstall $app"
  end
end

# Define a fish completion script for Flatpak install
function __fish_flatpak_install
  set -l available_apps (flatpak remote-ls --columns=app)
  for app in $available_apps
    complete -c flatpak -n '__fish_seen_subcommand_from install' -a $app -d "Install $app"
  end
end

# Source functions
__fish_flatpak_remove
__fish_flatpak_install


# Completions
complete -c flatpak -n __fish_use_subcommand -xa install -d "Install an application or runtime"
complete -c flatpak -n __fish_use_subcommand -xa update -d "Update an installed application or runtime"
complete -c flatpak -n __fish_use_subcommand -xa uninstall -d "Uninstall an installed application or runtime"
complete -c flatpak -n __fish_use_subcommand -xa list -d "List installed applications and runtimes"
complete -c flatpak -n __fish_use_subcommand -xa search -d "Search for applications and runtimes"
complete -c flatpak -n __fish_use_subcommand -xa run -d "Run an application"
complete -c flatpak -n __fish_use_subcommand -xa remote-add -d "Add a remote"
complete -c flatpak -n __fish_use_subcommand -xa remote-delete -d "Delete a remote"
complete -c flatpak -n __fish_use_subcommand -xa remote-ls -d "List remotes"
complete -c flatpak -n __fish_use_subcommand -xa remote-modify -d "Modify a remote"
complete -c flatpak -n __fish_use_subcommand -xa remote-info -d "Show information about a remote"