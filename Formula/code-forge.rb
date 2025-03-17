class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.47.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.47.1/forge-x86_64-apple-darwin"
    sha256 "5aa542d131b505f5571e6bf039f61ecf8f9f729156fabd688f8faaf7ac665fd8"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.47.1/forge-aarch64-apple-darwin"
    sha256 "6a03eb0a35d7cb8ddefb08126ec99a15daa871c3fa46eab48315f06a6e7ac72c"
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
