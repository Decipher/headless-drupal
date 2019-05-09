# DEMO: Headless blog

This is a demonstration on how to use a headless ContentaCMS Drupal distribution
as a content repository, with a Nuxt frontend for content management and
presentation.

---

## Table of Contents

* [Local development](#local-development)
  * [Requirements](#requirements)
  * [Initialize](#initialize)
  * [Install](#install)
  * [Services](#services)
  * [Drush](#drush)
  * [Make for mingw64](#make-for-mingw64)

---

## Local development

### Requirements

* [Docker Compose](https://docs.docker.com/compose/install/)
* (Windows) [Git Bash](https://git-scm.com/download/win)
* (Windows) [Make for mingw64](#make-for-mingw64)


### Initialize

Before you can install the site you need to initialize the environment.

This process will install the codebase, build the docker images and start the
docker-compose environment, allowing the database to complete it's own setup.

Run the following command from the repository root directory using Terminal or
Git Bash:

  > `make init`


### Install

Once the environment has been initialized (see above), you can install the site.

This will build the latest composer codebase and then re-install the site.

Run the following command from the repository root directory using Terminal or
Git Bash:

  > `make install`


### Services

* Frontend/Nuxt: [http://headless-blog.localhost]()
* Backend/ContentaCMS: [http://api.headless-blog.localhost]()


### Drush

Drush (DRUpal SHell) is a tool that allows you to interact with Drupal from
command line.

It can be used to install a site, enable new modules, update the database
or synchronize site configuration.

To use Drush, you can pass commands through via the following make command:

  > `make drush -- [PASSTHRU]`
 

---

#### Make for mingw64

* Go to [ezwinports](https://sourceforge.net/projects/ezwinports/files/).

* Download `make-X.Y.Z-without-guile-w32-bin.zip` (get the version without guile).

* Extract zip.

* Copy the contents to your `Git\mingw64\` merging the folders, but do **NOT**
  overwrite/replace any existing files.
