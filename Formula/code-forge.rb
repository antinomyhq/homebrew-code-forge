class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.31.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.31.0/forge-x86_64-apple-darwin"
    sha256 "4fe105972c2e99b88babe87a9949f1ac3d0d0094603769f07e10baee1d168a71"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.31.0/forge-aarch64-apple-darwin"
    sha256 "023c326471fa8a7fee0cc836c9cb29f10f3e8cf54ec72cc1acdf4b90a1223d97"
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
