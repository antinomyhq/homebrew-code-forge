class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.71.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.71.0/forge-x86_64-apple-darwin"
    sha256 "f8b1a3b4cad385094a9790b434613846094dfece27c33a00a0330a155324c0d1"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.71.0/forge-aarch64-apple-darwin"
    sha256 "b63a513dff7571ecb1575639dd03c13cc40fedfc93e51dbfffab3706ab54dd9c"
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
