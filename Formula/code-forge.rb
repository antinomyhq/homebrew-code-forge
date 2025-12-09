class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.10.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.10.0/forge-x86_64-apple-darwin"
    sha256 "c49e4f2e6865a7725ab16f8d16dd68fab47e91182a6a005b8b417ca8ef5e7855"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.10.0/forge-aarch64-apple-darwin"
    sha256 "51828f061731a7a48d4ad532c96049e5cec545a70ea31ca4eab98a26add30797"
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
