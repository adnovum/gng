![](https://github.com/dantesun/gng/workflows/Validate%20Gradle%20Wrapper/badge.svg) [![Gitter](https://badges.gitter.im/gdubw/community.svg)](https://gitter.im/gdubw/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

'gw' is a script that automatically search your `gradlew` when you are inside your Gradle project and execute it.

This is originally inspired by [gdub](https://www.gdub.rocks/)
and [gradlew-bootstrap](https://github.com/viphe/gradlew-bootstrap).

## What's the problem?

I worked with a lot of gradle projects, every project has its own Gradle Wrapper. So the global installed one, normally
installed with `brew install gradle`, is seldom used. In fact, the global installed gradle’s version may conflict with
the project you are working on and some weird and unexpected building failures may happen. **The best practice is always
using Gradle Wrapper comes with a project.** It's better to not keep a copy of global available gradle.

But keep typing `./gradlew` is cumbersome. It becoms even worse when you have to type `../gradlew`, or `../../gradlew`.

I am a heavy Gradle user, I always need to create a new Gradle project for trying some new ideas, without the globally
installed gradle , it is not possible installing Gradle Wrapper into a brand-new project.

You might interest in these discussions.
>
> Quoted from [gdub](https://gdub.rocks)
>
> - [Issue Gradle-2429](http://issues.gradle.org/browse/Gradle-2429)
> - [Spencer Allain's Gradle Forum Post](http://gsfn.us/t/33g0l)
> - [Phil Swenson's Gradle Forum Post](http://gsfn.us/t/39h67)
>

# Install

> This command is executed by the RHEL VM installer bootstrap script, it means VMs are pre-installed with gw.


Run the following command to get started with GNG. This command requires that you have sudo privileges and curl.

```shell
curl -fsSL https://raw.githubusercontent.com/adnovum/gng/master/install.sh | bash
```

# Usage

Just type `gw` whenever you need to type `gradle` or `gradlew`, then your life will be easier.


## Aliasing the `gradle` command

To avoid using any system wide Gradle distribution add a `gradle` alias to `gw` to your shell's configuration file.

Example *bash*:

```text
echo "alias gradle=gw" >> ~/.bashrc
echo "export PATH=/usr/local/bin:${PATH}" >> ~/.bashrc
source ~/.bashrc
```
