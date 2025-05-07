class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.87.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.87.4/forge-x86_64-apple-darwin"
    sha256 "36134e9fcf593e23ccad7d305aebf2fd057bcf768b3e7cd802fda3894e7877b5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.87.4/forge-aarch64-apple-darwin"
    sha256 "e83c8c31ce95cb194a27835efb96f6d08491e7b71080cfdde4a1cdb24caf2440"
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
