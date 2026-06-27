class Agents < Formula
  desc "One CLI for every coding agent — Claude Code, Codex, Gemini, Cursor, and more"
  homepage "https://agents-cli.sh"
  url "https://registry.npmjs.org/@phnx-labs/agents-cli/-/agents-cli-1.20.20.tgz"
  sha256 "cd453b3482fedafa6aac6d2164ee454bfeb053cca68f0895a30adcb817f43782"
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
