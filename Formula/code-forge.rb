class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.4/forge-x86_64-apple-darwin"
    sha256 "1a776cf57409d0f0b141c9b8a6541ba7e568a6145788c3021ee5e470ffe57348"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.4/forge-aarch64-apple-darwin"
    sha256 "bdf58e184a2aa2265176526cc1fc6b0dd396ae5d7020259cb8dab910acc109bf"
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
