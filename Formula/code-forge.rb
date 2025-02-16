class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.21.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.21.2/forge-x86_64-apple-darwin"
    sha256 "e66879bee7f3c84ae505224657dfa05c57e2f5db81190e5822328eb4c62aa09c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.21.2/forge-aarch64-apple-darwin"
    sha256 "2f6e22d544da079dd50e48707634aa60ee48be7fa0c6e542d6d45953ba6bb49c"
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
