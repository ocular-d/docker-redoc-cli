<div align="center">

# Docker Redoc CLI

</div>

## Table of Contents

- [About the Project](#📄-about)
- [Usage](#🚀-usage)
- [Contributing](#🤝-contributing)
- [License](#📝-license)
- [Credits](#🙏-credits)

## 📄 About

[Redoc](https://github.com/Redocly/redoc) CLI in a container

## 🚀 Usage

```shell
docker run -it -v "$(pwd)"/spec:/app/spec testthedocs/redoc-cli --help
Commands:
  redoc-cli serve <spec>   start the server
  redoc-cli bundle <spec>  bundle spec into zero-dependency HTML-file

Options:
      --help             Show help                                     [boolean]
      --version          Show version number                           [boolean]
  -t, --template         Path to handlebars page template, see
                         https://git.io/vh8fP for the example           [string]
      --templateOptions  Additional options that you want pass to template. Use
                         dot notation, e.g. templateOptions.metaDescription
      --options          ReDoc options, use dot notation, e.g.
                         options.nativeScrollbars
```

### Bundle OAS to HTML

```shell
docker run -it -v "$(pwd)"/spec:/app/spec testthedocs/redoc-cli bundle spec/openapi.json -o spec/pet-store.html
```

## 🤝 Contributing

We are a community effort, and everybody is most welcome to participate!

Be it filing bugs, formulating enhancements, creating pull requests, or any other means of contribution,
we encourage contributions from everyone.

## 📝 License

Distributed under the [MIT](https://choosealicense.com/licenses/mit/ "Link to MIT license") license.
