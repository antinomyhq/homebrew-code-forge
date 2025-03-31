class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.1/forge-x86_64-apple-darwin"
    sha256 "a20cc4789b095fdb525cc38c3a937ea6a3cb31bb67ef0917b332d89b44df3826"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.1/forge-aarch64-apple-darwin"
    sha256 "da4c3b5f130f594bd46584fc0c9967e934eb30bb69145590ad59b2c6dce49e6f"
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
