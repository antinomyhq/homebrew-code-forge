class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.119.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.119.1/forge-x86_64-apple-darwin"
    sha256 "3c4dfcebddaf23cbd6c4ac37cd277dc556eb438e9b59ab82c75a3e8728e6551a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.119.1/forge-aarch64-apple-darwin"
    sha256 "e007b0900e60a9da6f8f37e3e056bbbbbaab01c341d2621641b05a3727231e12"
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
