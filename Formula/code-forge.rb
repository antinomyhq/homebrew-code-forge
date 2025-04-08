class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.61.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.61.0/forge-x86_64-apple-darwin"
    sha256 "09f721eb4ad5b3896d08de1148413f5f3ceaff438a2b8eaa5952749b35778f89"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.61.0/forge-aarch64-apple-darwin"
    sha256 "20ba122b4641aa5bfbf582140bfa52c56c2bfc9c4ccd785ac34b74d1f0650247"
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
