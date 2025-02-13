class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.17.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.17.1/forge-x86_64-apple-darwin"
    sha256 "eea9ac26b4e268d34bf5fb6882e9d2a807a4e4546cf64145fea803cb2fbfc329"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.17.1/forge-aarch64-apple-darwin"
    sha256 "5fa204de8789ec418a3d97d16e006fb4bcfc1bcf783b763c4c9fc8116c38fb07"
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
