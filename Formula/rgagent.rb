class Rgagent < Formula
  desc "RafayGen agentic CLI - selectable cloud and Ollama providers"
  homepage "https://rafaygen.cloud"
  version "1.0.0"
  license "MIT"

  # Precompiled, self-contained engine. Linux x86_64 only for now;
  # macOS / arm64 builds will be added as separate stanzas.
  on_linux do
    on_intel do
      url "https://rafaygen.cloud/dl/rgagent/rgagent-1.0.0-linux-x64"
      sha256 "20b36af23a0a1340fe27caf39c06680790fdc70d1e614490d3a8513728147278"
    end
  end

  def install
    bin.install Dir["*"].first => "rgagent"
  end

  test do
    assert_match "rafaygen", shell_output("#{bin}/rgagent --version")
  end
end
