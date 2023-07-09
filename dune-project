(lang dune 3.9)

(using melange 0.1)

(name app)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name app)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
   (ocaml (>= 4.14.0))
   (dune (>= 3.9.0))
   (tyxml (= 4.5.0))
   (dream (= 1.0.0~alpha5))
   (melange (= 1.0.0)))
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
