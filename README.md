# Family Tree Program in Prolog

## Overview
This project implements a simple family tree using Prolog. The program defines basic family relationships using facts and derives complex relationships such as parent, grandparent, sibling, cousin, aunt, uncle, and ancestor through logical rules and recursion.

## Features
- Defines family members using Prolog facts
- Implements derived relationships using logical rules
- Supports recursive queries for ancestors
- Demonstrates logical inference and backtracking in Prolog

## Technologies Used
- SWI-Prolog (SWISH online environment)

## Files
- `family_tree.pl` – Prolog facts and rules for the family tree

## Sample Queries
```prolog
?- grandfather_of(X, mills).
?- grandmother_of(X, klyde).
?- sister_of(X, norah).
?- aunt_of(X, mills).
?- ancestor_of(X, mills).
