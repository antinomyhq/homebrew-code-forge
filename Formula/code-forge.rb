class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.122.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.122.1/forge-x86_64-apple-darwin"
    sha256 "6951e49029e51b60ad088ccc194c6bc04cb96a7ca27e5b3d9629387597d5347c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.122.1/forge-aarch64-apple-darwin"
    sha256 "1f892e7eea3065bc2caca30822408092abe3b5a287e0ca5a0a6902e7d96ffd4c"
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
