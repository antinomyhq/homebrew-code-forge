class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.46.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.46.0/forge-x86_64-apple-darwin"
    sha256 "a2cd9a8a3c2f99c38252146bea7e697f21ffc81df4f53bdb77482afeb62e69c3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.46.0/forge-aarch64-apple-darwin"
    sha256 "6a9a7da5c3fd1948cf5eabdfce5b3a50be5343dcb1da5da69dd5f90f1ed6373d"
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
