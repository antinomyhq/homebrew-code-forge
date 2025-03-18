class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.47.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.47.2/forge-x86_64-apple-darwin"
    sha256 "a493a3311d203521fb70a423dd8a69e2266cb96c4eba10c6c67efd9063df3fe6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.47.2/forge-aarch64-apple-darwin"
    sha256 "75bd265a56b9d2262594454d20fc16f6c0deb98c59011a6eeba926761dded0d9"
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
