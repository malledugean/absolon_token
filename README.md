<p align="center">
  <a href="" rel="noopener">
 <img width=300px height=300px src="https://i.imgur.com/baMZ8Zn.png" alt="Project logo"></a>

</p>

<h3 align="center">Absolon token</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/malledugean/absolon_token.svg)](https://github.com/malledugean/absolon_token/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/malledugean/absolon_token.svg)](https://github.com/malledugean/absolon_token/pulls)
[![License](https://img.shields.io/badge/license-CC--BY--4.0-blue.svg)](/LICENSE)

</div>

---

<p align="center"> Absolon Token (ABS) - ERC-20 Implementation.
    <br> 
</p>

## 📝 Table of Contents

-   [About](#about)
-   [Getting Started](#getting_started)
-   [License](#licensed)
-   [Authors](#authors)

## 🧐 About <a name = "about"></a>

This project implements an ERC-20 token named Absolon (ABS) on the Ethereum blockchain.

**Features:**

-   Compliant with the ERC-20 standard for token functionalities.
-   Uses 18 decimals for token representation.

### Security:

WARNING: This Tokes is currently under tests as Sepolia at following address.
The official token address will be included here! Only use the oficial references!

## License <a name = "licensed"></a>

This project is licensed under the Creative Commons Attribution 4.0 International License (CC-BY-4.0). See the LICENSE file for details.

## Dependencies

### Backup Wizard template readme to avoid it being overwritten

```shell
$ mv README.md README-oz.md
```

### Initialize sample Foundry project

```shell
$ forge init --force --no-commit --quiet
```

### Install OpenZeppelin Contracts and Upgrades

```shell
$ forge install OpenZeppelin/openzeppelin-contracts-upgradeable@v5.0.2 --no-commit --quiet
$ forge install OpenZeppelin/openzeppelin-foundry-upgrades --no-commit --quiet
```

### Restore README

```shell
$ mv README-oz.md README.md
```

## ✍️ Authors <a name = "authors"></a>

-   [@malledugean](https://github.com/malledugean)
