class Fcbnerd < Formula
  desc "Bind MIDI foot controller events to shell commands, or stream them as JSON"
  homepage "https://github.com/JamesRyanATX/fcbnerd"
  url "https://github.com/JamesRyanATX/fcbnerd/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "723bce81c938da0e374ebea5201b6782c9f25efcf5cc8c329e6e5320b1f4a68c"
  license "MIT"
  head "https://github.com/JamesRyanATX/fcbnerd.git", branch: "main"

  depends_on macos: :ventura

  def install
    # Homebrew already sandboxes the build; SwiftPM's own sandbox can't nest inside it.
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/fcbnerd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fcbnerd --version")
    assert_match "unexpected argument", shell_output("#{bin}/fcbnerd bogus 2>&1", 64)
    assert_match "controller must be 0-127", shell_output("#{bin}/fcbnerd --bind '1:200:1=true' 2>&1", 64)
  end
end
