class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.42.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.42.1/forge-x86_64-apple-darwin"
    sha256 "417cd8cfda7c101f6986f7e44cb5eb9621ee63cd5fa1e933e66fb341f8758314"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.42.1/forge-aarch64-apple-darwin"
    sha256 "13797bda29039c9d64839a500cd3b10bff63b4da35f13a1ba706fcc80e6edd02"
  end

  def install
    if Hardware::CPU.intel?
        executable_name = "forge-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "forge-aarch64-apple-darwin"
    end
    bin.install executable_name => "forge"
  end
end
