class Remarshal < Formula
  include Language::Python::Virtualenv

  desc "Convert between TOML, YAML and JSON"
  homepage "https://github.com/dbohdan/remarshal"
  url "https://files.pythonhosted.org/packages/ae/e7/98e22a9d62ee2c086da94f6aafeee5e7c3a68197d761cc22c90e7e949afb/remarshal-0.18.0.tar.gz"
  sha256 "8fd29ba9d5931f5ee2c54f902b11b26cd3bbca0ad8b3d6f39ca48255284f71dd"
  license "MIT"
  head "https://github.com/dbohdan/remarshal.git", branch: "master"

  bottle do
    rebuild 4
    sha256 cellar: :any,                 arm64_sonoma:   "03597df9a743a7b57d3538131397a5298c4a0373f0141320968af5e1e6237f7e"
    sha256 cellar: :any,                 arm64_ventura:  "afeec08e7e94d61f582bf6d58a131ee3266117bbd1ccda59ff50825049a359a0"
    sha256 cellar: :any,                 arm64_monterey: "287f72bb3f851b4e3f31a67a9ee2829d084fae1b5e42986977d8cfb63dfc7a7b"
    sha256 cellar: :any,                 sonoma:         "73f5076b51cd42711f5fb4a5f02112244a64a236375d1cee86383b031cd99e72"
    sha256 cellar: :any,                 ventura:        "75ea6b3611ededd7e0749acce767b9d0fa90b8d8692288729d486a3a386d9ec8"
    sha256 cellar: :any,                 monterey:       "c648307e0b41ac4d6aa05c0e7c3e0c31cd2d953260eb42bc940fb9faffc48e39"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "65d5827d54aed098a7f90486d4f79204490307854c3a44f49d114deb88222600"
  end

  depends_on "libyaml"
  depends_on "python@3.12"

  conflicts_with "msgpack-tools", because: "both install 'json2msgpack' binary"

  resource "cbor2" do
    url "https://files.pythonhosted.org/packages/ca/39/0d0a29671be102bd0c717c60f9c805b46042ff98d4a63282cfaff3704b45/cbor2-5.6.2.tar.gz"
    sha256 "b7513c2dea8868991fad7ef8899890ebcf8b199b9b4461c3c11d7ad3aef4820d"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
    sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
  end

  resource "rich-argparse" do
    url "https://files.pythonhosted.org/packages/7b/04/4b0b9b06662a4559041a88c2d31e93ecbc8aca1c45fee10a0c1a000b7274/rich_argparse-1.4.0.tar.gz"
    sha256 "c275f34ea3afe36aec6342c2a2298893104b5650528941fb53c21067276dba19"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/29/81/4dfc17eb6ebb1aac314a3eb863c1325b907863a1b8b1382cdffcb6ac0ed9/ruamel.yaml-0.18.6.tar.gz"
    sha256 "8b27e6a217e786c6fbe5634d8f3f11bc63e0f80f6a5890f28863d9c45aac311b"
  end

  resource "ruamel-yaml-clib" do
    url "https://files.pythonhosted.org/packages/46/ab/bab9eb1566cd16f060b54055dd39cf6a34bfa0240c53a7218c43e974295b/ruamel.yaml.clib-0.2.8.tar.gz"
    sha256 "beb2e0404003de9a4cab9753a8805a8fe9320ee6673136ed7f04255fe60bb512"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/7d/49/4c0764898ee67618996148bdba4534a422c5e698b4dbf4001f7c6f930797/tomlkit-0.12.4.tar.gz"
    sha256 "7ca1cfc12232806517a8515047ba66a19369e71edf2439d0f5824f91032b6cc3"
  end

  resource "u-msgpack-python" do
    url "https://files.pythonhosted.org/packages/36/9d/a40411a475e7d4838994b7f6bcc6bfca9acc5b119ce3a7503608c4428b49/u-msgpack-python-2.8.0.tar.gz"
    sha256 "b801a83d6ed75e6df41e44518b4f2a9c221dc2da4bcd5380e3a0feda520bc61a"
  end

  def install
    # Work around ruamel.yaml.clib not building on Xcode 15.3, remove after a new release
    # has resolved: https://sourceforge.net/p/ruamel-yaml-clib/tickets/32/
    ENV.append_to_cflags "-Wno-incompatible-function-pointer-types" if DevelopmentTools.clang_build_version >= 1500

    virtualenv_install_with_resources
  end

  test do
    json = "{\"foo.bar\":\"baz\",\"qux\":1}"
    yaml = <<~EOS.chomp
      foo.bar: baz
      qux: 1

    EOS
    toml = <<~EOS.chomp
      "foo.bar" = "baz"
      qux = 1

    EOS
    assert_equal yaml, pipe_output("#{bin}/remarshal -if=json -of=yaml", json)
    assert_equal yaml, pipe_output("#{bin}/json2yaml", json)
    assert_equal toml, pipe_output("#{bin}/remarshal -if=yaml -of=toml", yaml)
    assert_equal toml, pipe_output("#{bin}/yaml2toml", yaml)
    assert_equal json, pipe_output("#{bin}/remarshal -if=toml -of=json", toml).chomp
    assert_equal json, pipe_output("#{bin}/toml2json", toml).chomp
    assert_equal pipe_output("#{bin}/remarshal -if=yaml -of=msgpack", yaml),
      pipe_output("#{bin}/remarshal -if=json -of=msgpack", json)

    assert_match version.to_s, shell_output("#{bin}/remarshal --version")
  end
end
