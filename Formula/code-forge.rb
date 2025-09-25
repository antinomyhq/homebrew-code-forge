class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.120.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.120.1/forge-x86_64-apple-darwin"
    sha256 "9c08fbf36f6cb91e827f74f169b40da5fae73e56bc1b590e8ca897aa170ca32b"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.120.1/forge-aarch64-apple-darwin"
    sha256 "e321ffb8019673ec2bca15da336cb5cb51155fdb833dedaca9de5fcdca4a6627"
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
