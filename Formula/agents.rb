class Agents < Formula
  desc "One CLI for every coding agent — Claude Code, Codex, Gemini, Cursor, and more"
  homepage "https://agents-cli.sh"
  url "https://registry.npmjs.org/@phnx-labs/agents-cli/-/agents-cli-1.20.19.tgz"
  sha256 "a002e5b8f245f92c7a9f1a9f343e9b9c2088a7c3f141a0992723ffd0af658654"
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
