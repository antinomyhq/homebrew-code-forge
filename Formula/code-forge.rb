class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.15.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.15.0/forge-x86_64-apple-darwin"
    sha256 "51df06046ea5d429dee4d409e2c5f9750a415177ea253c856007c8f242fbca3c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.15.0/forge-aarch64-apple-darwin"
    sha256 "da834bd872b56f695a28b90a542cf6892f1efae9fda0de30ad1ce741dd5c014a"
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
