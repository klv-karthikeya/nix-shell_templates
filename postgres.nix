with import <nixpkgs> {};
mkShell {
  buildInputs = [
    postgresql
  ];
  ShellHook = ''
    echo "Starting PostgreSQL..."
    pg_ctl -D .tmp/mydb -l logfile -o "--unix_socket_directories='$PWD'" start || { echo "Failed to start PostgreSQL"; exit 1; }
    psql --host=localhost --dbname=postgres
  '';
}

