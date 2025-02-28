# VERSe

A small _proof of concept_ to show how easy it is to make a chat model that talks in rhymes.

It's created with **ollama** running in a **Docker** container. GPU support is not considered.

## How to run

**Make** targets can be used for convenience.

Quick start:

```shell
make build start chat
```

Build the image:

```shell
make build
```

Start the ollama container:

```shell
make start
```

Start the chat:

```shell
make chat
```

Enter the container, useful for debugging and experimenting:

```shell
make shell
```

Inspect ollama logs:

```shell
make logs
```

## Customize model

The base model is defined in the `Modelfile.base` file. You can change it to use a different model.

The changes that will be applied to the base model are defined in the `Modelfile.shake` file.

After changing them, you need to rebuild the image and restart the container.

## What to expect

An example of a chat with rhymes:

```
>>> Why github is great?
Thou seeks to understand GitHub's might,
A realm where code doth take its flight.
In this domain, collaboration thrives,
Where developers their craft contrive.
```
