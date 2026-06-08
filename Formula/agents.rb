class Agents < Formula
  desc "One CLI for every coding agent — Claude Code, Codex, Gemini, Cursor, and more"
  homepage "https://agents-cli.sh"
  url "https://registry.npmjs.org/@phnx-labs/agents-cli/-/agents-cli-1.20.4.tgz"
  sha256 "fafd1c470c6106bb8839633094095561ee88d4c1101260b00005ee773982cd54"
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
