
RwandaOS – Group Meeting Report
Custom Debian-based Linux Distribution
Technical Planning and Team Action Plan

1. Project Overview
   RwandaOS is a proposed customized Linux distribution designed around the needs of students. The team agreed to use Debian as the underlying operating system and GNOME as the initial desktop environment. The project will combine the stability and flexibility of Debian with a distinct Rwandan identity, including custom branding, colors, sounds, wallpapers, animations, and student-focused software.
2. Initial Project Vision
   Base operating system: Debian.
   Desktop environment: GNOME.
   Target audience: Students.
   Project identity: A modern, lightweight and accessible operating system with a Rwandan-inspired identity.
   Visual identity: Rwandan-inspired colors, logo, wallpapers, icons and animations.
   Audio identity: Custom sounds inspired by Rwanda.
   User experience: A clean desktop with useful tools and applications prepared for students.
   Technical direction: Customize and package existing open-source components rather than writing an operating system kernel from scratch.
3. Proposed Student-Focused Features
   The team discussed providing useful tools and applications for students, potentially including:
   A document/PDF reading application.
   Web browser.
   Power and battery management tools.
   Advanced calculator.
   Other academic and productivity applications identified during research.
   The final software list will be decided after the team researches student needs and confirms which applications are appropriate, open source, stable and compatible with Debian.
4. Technical Direction
   The team will build RwandaOS as a customized Debian-based distribution. The first implementation should focus on creating a reproducible Debian + GNOME environment before adding extensive customization.
   Proposed architecture:
   RwandaOS identity and customization
   RwandaOS applications and configuration
   GNOME desktop environment
   Debian packages and system components
   Linux kernel
5. Technical Roadmap
   Development Environment
   Set up a safe development environment using a virtual machine.
   Install Debian with GNOME.
   Become familiar with the Debian filesystem structure.
   Practice using the Linux terminal.
   Learn essential Bash commands and basic Bash scripting.
   Install Git and learn the team's Git workflow.
   Base System Research
   Research the Debian architecture and major system components.
   Understand how Debian packages are installed, configured and updated.
   Research how GNOME is configured and customized.
   Study how a Debian-based live ISO is built.
   Identify appropriate open-source tools for building the RwandaOS ISO.
   First Technical Prototype
   Create a clean Debian + GNOME installation.
   Verify networking, audio, display, storage and basic hardware support.
   Create a baseline snapshot so future changes can be compared against a known working system.
   Document every important configuration change.
   RwandaOS Identity
   Finalize the RwandaOS logo.
   Define the official color palette.
   Design wallpapers and desktop backgrounds.
   Design icons and other visual assets.
   Design boot and login animations.
   Research how GNOME themes, GTK themes and window decorations can be customized.
   Create and test the RwandaOS theme.
   Sound Identity
   Define the desired sound identity for RwandaOS.
   Create or source appropriate Rwandan-inspired audio assets with permission and suitable licensing.
   Prepare startup, notification, error and other system sounds where technically appropriate.
   Test sound files for quality, length and usability.
   Integrate the sounds into the system configuration.
   Student Software
   Research and agree on the essential applications for students.
   Check Debian compatibility and licensing.
   Test applications in the clean Debian + GNOME environment.
   Configure default applications and file associations.
   Remove unnecessary software where appropriate.
   Automation and Packaging
   Write scripts to install RwandaOS packages and configurations.
   Package custom themes, sounds, icons and applications where appropriate as Debian packages.
   Make the customization process reproducible.
   Document the build process so another team member can reproduce it.
   ISO Development
   Build the first RwandaOS ISO from the documented configuration.
   Add RwandaOS branding and selected software.
   Test the ISO in a virtual machine.
   Verify that the ISO boots and installs correctly.
   Keep versioned builds such as RwandaOS 0.1.
   Testing and Improvement
   Test on different virtual machine configurations.
   Test on older and lower-specification computers where available.
   Test installation, networking, audio, graphics, USB, applications and updates.
   Record bugs and improvements.
   Fix critical issues before public release.
6. Immediate Team Tasks Before the Next Meeting
   Each team member should complete their assigned preparation before the next meeting. The purpose is to ensure that the next meeting can focus on implementation rather than basic orientation.
   Git Repository: Create the team's central Git repository for RwandaOS. Establish a clear folder structure, README, contribution rules and basic branching/version-control workflow.
   Debian Source and Installation Resources: Find the official Debian source-code resources and official installation/live-image resources that the team will use. Record the relevant official documentation and explain what each resource is used for.
   RwandaOS Logo and Animation: Design initial concepts for the RwandaOS logo, visual identity and boot/login animations. Prepare files that can later be integrated into the operating system.
   Technical Roadmap Research: Research the complete technical process for creating a customized Debian-based distribution with GNOME, from a clean Debian installation through customization, packaging, ISO generation and testing.
   Linux Terminal and Bash: Every member should practice essential Linux terminal commands and understand basic Bash usage, including navigation, file operations, permissions, package management and simple scripting.
   Debian Filesystem: Every member should study the Debian/Linux filesystem and understand the purpose of important directories such as /, /home, /etc, /usr, /var, /opt, /tmp, /boot and /dev.
   GNOME Customization: Research how GNOME themes, panels, menus, icons, wallpapers, window decorations and related settings can be customized.
   Student Applications: Research applications that would be genuinely useful for students and propose a short list, including the reason for each application and its licensing/availability status.
7. Team Learning Requirements
   Before technical implementation begins, every team member should be able to:
   Open and navigate a Linux terminal.
   Create, copy, move, rename and delete files and directories using terminal commands.
   Understand absolute and relative paths.
   Use basic Bash commands and command options.
   Understand file ownership and permissions.
   Install, remove and update Debian packages using the package manager.
   Understand the basic Debian filesystem.
   Use Git to clone, commit, pull and push changes.
   Explain the basic relationship between Debian, GNOME, applications and the Linux kernel.
   Follow the team's documented build and testing process.
8. Suggested Git Repository Structure
   The team can begin with a simple structure and expand it as the project becomes more mature:
   rwandaos/
   ├── README.md
   ├── docs/
   │   ├── architecture/
   │   ├── technical-roadmap/
   │   └── research/
   ├── branding/
   │   ├── logo/
   │   ├── wallpapers/
   │   ├── icons/
   │   └── animations/
   ├── sounds/
   ├── themes/
   │   └── gnome/
   ├── packages/
   ├── scripts/
   ├── applications/
   ├── iso/
   └── tests/
9. Expected Outcome of the Next Meeting
   By the next meeting, the team should have a shared Git repository, access to the required Debian resources, initial branding concepts, and enough technical research to begin implementation. Every member should also have basic confidence with the Linux terminal, Bash commands, Debian filesystem and Git.
   The meeting should then move from planning into practical work: setting up the development environment, creating the clean Debian + GNOME baseline, establishing the project repository structure, and beginning the first RwandaOS customization.
10. Team Working Principle
    The project should be developed incrementally. The team should avoid changing many components at the same time. Each major change should be documented, tested and committed to Git. This will make it easier to identify problems, return to a working version and eventually reproduce the complete RwandaOS build.
11. Conclusion
    The team has established the initial direction for RwandaOS: a Debian-based Linux distribution using GNOME, designed primarily for students and distinguished by a Rwandan-inspired visual and audio identity. The immediate priority is preparation. Each member must understand the core Linux tools and research the technical build process so that the next meeting can begin hands-on implementation.
