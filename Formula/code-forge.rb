class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.8"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.8/forge-x86_64-apple-darwin"
    sha256 "5ededb4f58186e16dfae9dd2b3b9e7dce7f7d6e2cc1632fcdd533109c0aea5d7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.8/forge-aarch64-apple-darwin"
    sha256 "f34d0bb6cbc2655b3d8fce3e6a13e89741a46b0cdd2a48353f236c687134e967"
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
