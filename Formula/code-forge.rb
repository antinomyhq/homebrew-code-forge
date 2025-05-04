class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.85.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.85.3/forge-x86_64-apple-darwin"
    sha256 "bb8a56d9849fcb3884c7961e2e908a2e762319662471733d477c49d578fec460"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.85.3/forge-aarch64-apple-darwin"
    sha256 "16825af332fddc2e96f628e70a24337982c825c495caa87df428bfccc09c52b1"
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
