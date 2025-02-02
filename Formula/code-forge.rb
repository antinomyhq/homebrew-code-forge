class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.6"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.6/forge-x86_64-apple-darwin"
    sha256 "1edd4a75c08201e29cca46c5a0686f7305f844f71ac554dc280b9f7ae44048ad"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.6/forge-aarch64-apple-darwin"
    sha256 "b73e7406d0c1fe2b7e9efc7aecf580178c547afe821cd63521e53f0b46ee8ad9"
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
