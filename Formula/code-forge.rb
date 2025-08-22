class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.111.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.111.0/forge-x86_64-apple-darwin"
    sha256 "4f551fd38ec9814ac47ce3fc435a27d0a16670e654130025c8bc87a2794152ce"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.111.0/forge-aarch64-apple-darwin"
    sha256 "da9306c886a3813fda2b4c7a0699d55304005038d3d69de51f1553f8918e7acf"
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
