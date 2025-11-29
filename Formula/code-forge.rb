class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.9.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.9.0/forge-x86_64-apple-darwin"
    sha256 "85656c0f90e29ac9ef94ed7c78b583c6348f46c24af19b07c46515ab0ca21ea7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.9.0/forge-aarch64-apple-darwin"
    sha256 "d838273341e9d29f33c149917ad4478f08aa6d7166ce7958c9630f0763b9581d"
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
