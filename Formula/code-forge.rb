class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.19.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.19.1/forge-x86_64-apple-darwin"
    sha256 "d3dc2cc5eba9d56d735e1214aa5e4dc8b1cf00e446da990e9a35d8314c0ccf0d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.19.1/forge-aarch64-apple-darwin"
    sha256 "f3233843fe3487048dd0e8faf75e111096739da2fd87f6548350c5e1fc860da9"
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
