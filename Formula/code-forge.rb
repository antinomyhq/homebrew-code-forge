class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.1/forge-x86_64-apple-darwin"
    sha256 "b1d3cada95cad95448092bc3ee89c977dc3968c9e477f945b322516d06d5c579"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.1/forge-aarch64-apple-darwin"
    sha256 "b0dacd41b10a15bc2d6903672ac4dd22d8c49afdf3217e0e948e5f813c1fcbdf"
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
