class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.14.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.14.0/forge-x86_64-apple-darwin"
    sha256 "6b993ee602f55caf8c8d6b6c5182876f5b027d44f5b7e9170752bd99d93e15c5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.14.0/forge-aarch64-apple-darwin"
    sha256 "a0b0e6d45f8687c24df9e82b1f52a36aada9d7b356eacd9a65036c7e0ca083fe"
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
