class Agents < Formula
  desc "One CLI for every coding agent — Claude Code, Codex, Gemini, Cursor, and more"
  homepage "https://agents-cli.sh"
  url "https://registry.npmjs.org/@phnx-labs/agents-cli/-/agents-cli-1.20.6.tgz"
  sha256 "a14d3800d8bbaab7532f7d5ee452ab9e632407e8de1c948bec0d865482caec77"
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
