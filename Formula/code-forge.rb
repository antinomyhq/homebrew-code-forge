class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.97.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.97.1/forge-x86_64-apple-darwin"
    sha256 "248995b1f57ffafc9ee85d6aa9c0a612bf708737240b1fe4cf20a834b7d65c4d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.97.1/forge-aarch64-apple-darwin"
    sha256 "26b61ad4e48382b83c784ad9dd9c12033119bf89a97196683dcf6f823d17f64a"
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
