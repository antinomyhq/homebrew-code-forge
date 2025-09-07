class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.114.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.114.4/forge-x86_64-apple-darwin"
    sha256 "343f3d51f4b88a43b8ef2dc651ef9e4e769f83543c69d1fb59a50151f58c03e9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.114.4/forge-aarch64-apple-darwin"
    sha256 "40302ff33e7aaf730895262bc2ffec335f51ce815cc515e3f39d668cc020b56e"
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
