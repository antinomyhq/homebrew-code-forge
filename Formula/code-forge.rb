class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.64.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.64.0/forge-x86_64-apple-darwin"
    sha256 "4171df60a283b4be36ba574007e92b2667850ea1fbc87f91a8a458925f73e692"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.64.0/forge-aarch64-apple-darwin"
    sha256 "c52245d2b67fcf1783722c66e68269afebf95f4aec81eb5bc37df4d90dd57968"
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
