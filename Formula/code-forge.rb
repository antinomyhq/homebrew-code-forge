class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.13.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.13.2/forge-x86_64-apple-darwin"
    sha256 "7355ff2ec5643e26639a60e8c881d530abc551581c78362a1280054379f6fa4b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.13.2/forge-aarch64-apple-darwin"
    sha256 "aa18d376add939dd81bdc8a0abd8c5bc4182d561ca6b375cf027cd5a5b10eb67"
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
