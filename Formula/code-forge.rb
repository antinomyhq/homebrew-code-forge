class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.74.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.74.1/forge-x86_64-apple-darwin"
    sha256 "f1edde4bffcc9a21d3d81b70951f4d0fb9dfe0950ff61d6986052509c32136b2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.74.1/forge-aarch64-apple-darwin"
    sha256 "ae11a728d1c48d2ad3f70148933318aeab7b4155a3be889e5cffad09e377eb88"
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
