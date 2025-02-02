class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.3/forge-x86_64-apple-darwin"
    sha256 "c46e3b730d3e8012a7bb57231e13b0520532b53740e732fb2cd33b0ca70e64ae"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.3/forge-aarch64-apple-darwin"
    sha256 "923c1e9c99aa16c5c6e211eefa8f4d8c77f142d2737b9a59bec75f70682bb70d"
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
