class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.54.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.54.0/forge-x86_64-apple-darwin"
    sha256 "840678d38403b38309528a415db96665491446c07668bb7f53e8f0dd7c805ad3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.54.0/forge-aarch64-apple-darwin"
    sha256 "5cb81f9e969672e0a2923ade509699e292e336f6bb2b9eaba3474e29bc1da6f6"
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
