class AktarCli < Formula
  desc "Upload files to your own S3, R2 or B2 bucket through the Aktar app"
  homepage "https://getaktar.com/cli/"
  url "https://registry.npmjs.org/@getaktar/cli/-/cli-0.1.0.tgz"
  sha256 "56adda4e6b54c9bd8bea0d74b90662f67623fc1d84ca51aed666eeb32634defb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/aktar --version").strip
    # Nothing is listening in the test sandbox, so it says how to connect.
    output = shell_output("#{bin}/aktar status 2>&1", 3)
    assert_match "aktar login", output
  end
end
