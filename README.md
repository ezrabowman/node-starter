# Node Starter Project

Starter for Node projects. Configures the following features:

- Version Control - git, husky, lint-staged
- Package Manager - yarn (npm also supported)
- Strict Typing - typescript
- Source Maps - source-map-support
- Testing - jest
- Linting - eslint
- Formatting - prettier
- Hot Reloading - nodemon, ts-node

## Getting Started

Copy (don't clone) this repository to your new project directory. Since this project probably has dependencies that are out-of-date by the time you copy this to a new project, you first need to update everything to the latest.

```
yarn install
yarn upgrade-interactive --latest
```

To run the app for developement:

```
yarn dev
```

To run the app for production:

```
yarn start
```

See [this](https://stackoverflow.com/questions/62650640/yarn-how-do-i-update-each-dependency-in-package-json-to-the-latest-version) if using yarn.

See [this](https://stackoverflow.com/questions/16073603/how-to-update-each-dependency-in-package-json-to-the-latest-version) if using npm.

## Features

### Version Control

Of course, git. Project also has base .gitignore file.

### Testing

Test files should be located near the source files they are testing. This starter uses Jest and is configured to run converage.

```
yarn test
```
