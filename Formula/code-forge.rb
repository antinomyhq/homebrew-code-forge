class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.11.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.11.0/forge-x86_64-apple-darwin"
    sha256 "530c1c0579abc6762904ebabd9adc90dd0b86d9d2cff89404550d721a2168b90"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.11.0/forge-aarch64-apple-darwin"
    sha256 "bd4f3c645d6b8566b405199c092e4ae6895ace6c786afb1b71991cf4b28f0d34"
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
