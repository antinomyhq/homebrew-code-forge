class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.14.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.14.0/forge-x86_64-apple-darwin"
    sha256 "b9baa5a5461c5e47f28fc597b274dcc8eef61b28dfa9587a7728f164c2d753c9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.14.0/forge-aarch64-apple-darwin"
    sha256 "9a2a9f069532bf2bfbd19be348d8f6f772efb53ae3209cfec42e374e106a6623"
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
