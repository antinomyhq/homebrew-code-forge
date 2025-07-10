class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.98.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.98.3/forge-x86_64-apple-darwin"
    sha256 "7ed5e947935e0c7f7353d5c94a6a67de63b01cca2a28d5d0d5130b6db6aca47e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.98.3/forge-aarch64-apple-darwin"
    sha256 "33c278ced52f1c22152b3bdb25ec9391ac01ec5d40fb78329a71c70c60753d7d"
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
