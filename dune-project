(lang dune 3.9)

(using melange 0.1)

(name ocaml_fullstack)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name ocaml_fullstack)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
   (ocaml (>= 4.14.0))
   (dune (>= 3.9.0))
   (tyxml (= 4.5.0))
   (dream (= 1.0.0~alpha5))
   (melange (= 1.0.0))
   (reason-react (= 0.11.0))
   (reactjs-jsx-ppx (= 1.0.0)))
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
