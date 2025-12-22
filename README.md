[//]: # (SPDX-License-Identifier: CC-BY-4.0)
[//]: # (TODO Customize project readme)

# ML-KEM libjade

# Getting started

This repository contains implementations of ML-KEM-768 and MLK-KEM-1024 for the x86-64 architecture with AVX2 instruction extensions.

It was produced using the [Formosa Cypto](https://formosa-crypto) tool-chain: the formally verified source-code is written in the Jasmin programming language and the assembly is produced by the Jasmin certified compiler.

Instructions on, and an example of, how to use the code can be found in the `examples` folder.

## Status 

**In Development**: This first release is in the process of being adopted for industrial deployment,
so the available code is production-ready. 
However, the public-key validation code recommended by FIPS-203 for ML-KEM implementations is not yet implemented.

## Constant-time goals / properties

The code is formally verified for the constant-time property and speculative constant-time property using the type-system shipped with the Jasmin compiler.

This means that the compiler guarantees that only public (or explicitly declassified) values are passed as inputs to instructions that are modelled as potentially introducing input-dependent timing fluctuations. This includes, but is not restricted to, all memory accesses and branching operations. 

In these implementations `declassify` annotations are only used to justify the operation of the rejection sampling procedure that expands the public matrix of ML-KEM.

## Verification scope

These implementations are formally verified to be functionally correct (i.e., correct for all possible inputs) with respect to the specification of ML-KEM available in the Formosa Crypto [`crypto-specs`](https://github.com/formosa-crypto/crypto-specs) repository. The functional correctness proof currently assumes that the underlying SHA-3 implementation is correct. This assumption is expected to be removed during 2026.

The implementations (in this case including also the SHA-3 code) are also formally verified for the Jasmin notion of `safety`, which means that the Coq/Roq proof that certifies the Jasmin compiler applies to the source code. Safety verification, in this sense, includes the usual restrictions that guarantee absence of undefined behaviors, including memory safety and absence of other run-time exceptions. On the other hand, it includes also additional restrictions, namely that all memory regions passed to the assembly code are disjoint. 

All information about the formal verification of this code, including all the proof scripts and how to reproduce the machine-checked validation steps are available from the [formosa-mlkem](https://github.com/formosa-crypto/formosa-mlkem) repository.

The following publications are relevant to understand the scope of the formal verification results, including the tool-chain architecture, the TCB, the properties proved for the specification, and overall formal verification approach:

* José Bacelar Almeida, Gustavo Xavier Delerue Marinho Alves, Manuel Barbosa, Gilles Barthe, Luís Esquível, Vincent Hwang, Tiago Oliveira, Hugo Pacheco, Peter Schwabe, Pierre-Yves Strub:
Faster Verification of Faster Implementations: Combining Deductive and Circuit-Based Reasoning in EasyCrypt. SP 2025: 3820-3838

* José Bacelar Almeida, Santiago Arranz-Olmos, Manuel Barbosa, Gilles Barthe, François Dupressoir, Benjamin Grégoire, Vincent Laporte, Jean-Christophe Léchenet, Cameron Low, Tiago Oliveira, Hugo Pacheco, Miguel Quaresma, Peter Schwabe, Pierre-Yves Strub:
Formally Verifying Kyber - Episode V: Machine-Checked IND-CCA Security and Correctness of ML-KEM in EasyCrypt. CRYPTO (2) 2024: 384-421

* José Bacelar Almeida, Manuel Barbosa, Gilles Barthe, Benjamin Grégoire, Vincent Laporte, Jean-Christophe Léchenet, Tiago Oliveira, Hugo Pacheco, Miguel Quaresma, Peter Schwabe, Antoine Séré, Pierre-Yves Strub:
Formally verifying Kyber Episode IV: Implementation correctness. IACR Trans. Cryptogr. Hardw. Embed. Syst. 2023(3): 164-193 (2023)

* José Bacelar Almeida, Manuel Barbosa, Gilles Barthe, Benjamin Grégoire, Adrien Koutsos, Vincent Laporte, Tiago Oliveira, Pierre-Yves Strub:
The Last Mile: High-Assurance and High-Speed Cryptographic Implementations. SP 2020: 965-982

* José Bacelar Almeida, Cécile Baritel-Ruet, Manuel Barbosa, Gilles Barthe, François Dupressoir, Benjamin Grégoire, Vincent Laporte, Tiago Oliveira, Alley Stoughton, Pierre-Yves Strub:
Machine-Checked Proofs for Cryptographic Standards: Indifferentiability of Sponge and Secure High-Assurance Implementations of SHA-3. CCS 2019: 1607-1622

* José Bacelar Almeida, Manuel Barbosa, Gilles Barthe, Arthur Blot, Benjamin Grégoire, Vincent Laporte, Tiago Oliveira, Hugo Pacheco, Benedikt Schmidt, Pierre-Yves Strub:
Jasmin: High-Assurance and High-Speed Cryptography. CCS 2017: 1807-1823

## Performance

Instructions on how to benchmark the code are available in the `bench` folder.

## ACVP testing coverage

The code is fuzzed for correctess with respect to the `https://github.com/pq-crystals/kyber` implementations.
Information on how to reproduce the tests is available in the `test` folder.


