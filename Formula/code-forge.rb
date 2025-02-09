class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.12.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.12.0/forge-x86_64-apple-darwin"
    sha256 "bcb0a11b717b7f1e514b9e4126fe8ef5730baf0bc71cced8380d49ee156a1956"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.12.0/forge-aarch64-apple-darwin"
    sha256 "6273338ddffbc845c658997c273ecc95e59909b66280917d7250ea24e8cf16bc"
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
