name: hollywood

version: 1.13

summary: fill your console with Hollywood melodrama technobabble

description: >

This utility will split your console into a multiple panes of genuine

technobabble, perfectly suitable for any Hollywood geek melodrama.

It is particularly suitable on any number of computer consoles in the

background of any excellent schlock technothriller.

confinement: classic

grade: stable

parts:

hollywood:

plugin: nil

stage-packages: [hollywood]

stage:

- -bin/hollywood

snap:

- -bin/hollywood

apps:

hollywood:

command: hollywood

