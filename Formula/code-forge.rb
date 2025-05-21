class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.93.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.93.0/forge-x86_64-apple-darwin"
    sha256 "0a2f09eebaf2546f80c230d3ff2540149958f349551e7541c1058e14dddc2ac0"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.93.0/forge-aarch64-apple-darwin"
    sha256 "7e861a42ddebb56500bea9b0a3cff1eed8704fdeb5689c1aba90f14b6d3aab54"
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
