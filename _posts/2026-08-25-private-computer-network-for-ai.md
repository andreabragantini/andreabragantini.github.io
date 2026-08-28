---
layout: post
title: Building a Private Computer Network from Old Hardware
subtitle: Turning an old workstation into a private server, compute node and personal cloud.
tags: [homelab, private-cloud, GPU, machine-learning, networking, Linux, Windows, Tailscale]
thumbnail-img: /assets/img/private_network_thumb.jpg
share-img: /assets/img/private_network_thumb.jpg
cover-img: /assets/img/private-network-cover.jpg
comments: true
---

# Building a Private Computer Network from Old Hardware

What can you do with an old workstation, a decent GPU, a few hard drives and a bit of curiosity?

Quite a lot.

I recently started building my own private computing environment around an old Dell XPS workstation. Rather than letting the hardware become obsolete, I wanted to give it a second life: part storage server, part computing node, part machine-learning laboratory, and part private cloud.

The result is am always-on small personal infrastructure that I can access from my everyday computer without having to physically sit in front of the server.

## The idea

The core principle is simple: **separate the machine you use every day from the machine that does the heavy lifting.**

My main 13 inches laptop is where I work. And most of time I find myself working while travelling around or in different places. The 13 inches is quite a comfortable travel companion. However, sometimes I miss some computing power, some storage and maybe also a decent hardware on where to work with my machine learning experiments. That's why the idea to look at my old XPS computer: to create an always-on server where data, models and computational workloads live.
Furthermore, the server has a dedicated storage drive for my data and models, while the system drive handles the operating system and applications. 

The two machines communicate through a private network using Tailscale, which makes the server accessible securely even when they are not on the same physical network.

This means I can transfer files, access shared folders, work remotely through VS Code, run applications on the server and use its GPU without having to move anything physically.

In practice, it starts to feel a little bit like having a personal cloud — except that the hardware is sitting in my own house.

## Making an old GPU useful again

One of the most interesting parts of the project is the GPU.

The server uses an NVIDIA GTX 1050. By today's standards, it is obviously not a powerful machine-learning GPU. But it is still perfectly capable of accelerating smaller models and experiments.

I asked myself: **“What can I realistically run with the hardware I already have?”**

The idea of having an infrastructure where I could run locally some private open-weights LLM models was tickling my mind for some time, and so I decided to give it a go.

This led me to experiment with local LLMs and GPU/CPU offloading. I have seen that smaller models can use the GPU for part of their workload while relying on the CPU and system RAM for the rest.

It is not a replacement for a modern workstation or a cloud GPU, but for experimentation, prototyping and learning, it is surprisingly useful.

And there is something particularly satisfying about making ten-year-old hardware do something it was never designed for.

## More than an LLM server

Although local AI was one of the motivations for the project, the server is deliberately not built around a single application.

It is becoming a general-purpose private infrastructure layer.

I can use it for:

* personal data and file storage;
* machine-learning models and experiments;
* local LLM inference with Ollama;
* development environments;
* remote development through VS Code;
* computational workloads that are better suited to the server;
* services that I want to keep running independently of my main PC.

The important part is that these capabilities share the same underlying infrastructure.

## Why build this instead of using the cloud?

Cloud services are extremely useful, but building a small private environment teaches you things that abstractions tend to hide.

You start thinking about storage architecture, networking, authentication, remote access, GPU memory, CPU/RAM constraints, operating systems and resource allocation.

More importantly, you start thinking differently about hardware.

An old computer is not necessarily an obsolete computer.

A machine that is too slow for your daily workflow might still be an excellent file server. An older GPU might still be useful for small ML models. A large hard drive might become the foundation of a private data platform.

The limiting factor is often not the hardware itself, but how you put the pieces together.

## A small project with a bigger lesson

This project is still evolving. There is no ambitious data centre behind it — just an old workstation, a network connection, some storage and a lot of experimentation.

That is precisely what makes it interesting.

For anyone interested in homelabs, self-hosting, machine learning or infrastructure, I think this is a good place to start. You do not necessarily need new hardware, expensive cloud instances or a complicated Kubernetes cluster.

Start with what you already have.

Connect two computers. Share a folder. Install a Linux distribution or use Windows Subsystem for Linux on your Windows machine. Put an old GPU to work. Run a small model locally. Automate something. Break it, fix it, and understand why it broke.

At some point, you stop thinking of your computers as isolated devices and start thinking of them as **your own small computing environment**.

That is what this project is ultimately about.

## Technical deep-dive

For those interested in what is actually running behind the project, the setup is intentionally simple and based largely on existing hardware and open-source software.

**Hardware**

The core of the system is a Dell XPS 15 laptop repurposed as a server, equipped with an NVIDIA GeForce GTX 1050 and an additional 1 TB of external USB storage. The system uses separate drives for the operating system and data, keeping personal data, models and workloads independent from the main system installation.

**Network & remote access**

The server, my main laptop. and my other devices like mobile phones, are connected through a private network built with **Tailscale**. This provides secure device-to-device connectivity without exposing the server directly to the public Internet.

Windows network shares (SMB) are used for file transfer and shared storage, while remote development is handled through **Visual Studio Code Remote SSH**. This allows me to develop from my main PC while executing code directly on the server.

**Machine Learning stack**

The server is configured as a small local ML environment, including:

* **NVIDIA drivers + CUDA 12.6** for GPU acceleration;
* **PyTorch 2.13** with CUDA support;
* **Ollama** for running local LLMs;
* smaller quantized models running through a combination of GPU VRAM, system RAM and CPU;
* dedicated storage for ML models and datasets.

The limited GPU memory makes model selection and resource management part of the experimentation itself. Rather than relying exclusively on GPU inference, the system can distribute workloads between GPU and CPU.

**Server & development environment**

The server is also used as a general-purpose computing and development machine. Python environments are managed independently for different projects, with GPU-enabled environments available for machine-learning workloads.

The architecture is deliberately modular: storage, networking, development tools and ML services are separate components that can be added or replaced without redesigning the entire system.

### The architecture, in one view

```text
                         PRIVATE NETWORK
                            Tailscale
                               │
                ┌──────────────┴──────────────┐
                │                             │
        Main     Laptop                 XPS Server
        Windows                         Compute + Storage
                │                             │
        VS Code Remote SSH                    ├── System Drive
        SMB file access                       ├── Data Drive
                                              ├── Ollama
                                              ├── PyTorch / CUDA
                                              └── NVIDIA GTX 1050
                                                       │
                                                GPU / CPU workloads
```
