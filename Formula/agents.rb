class Agents < Formula
  desc "One CLI for every coding agent — Claude Code, Codex, Gemini, Cursor, and more"
  homepage "https://agents-cli.sh"
  url "https://registry.npmjs.org/@phnx-labs/agents-cli/-/agents-cli-1.20.0.tgz"
  sha256 "bcfbfb95d8a23a886b805b1f2549f292b0e24ea7e4d285d15d92929277f179f1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/agents", "#{libexec}/bin/ag",
                            "#{libexec}/bin/browser", "#{libexec}/bin/computer"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agents --version")
  end
end
