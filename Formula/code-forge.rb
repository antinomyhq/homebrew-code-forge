class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.35.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.35.0/forge-x86_64-apple-darwin"
    sha256 "f6bd2bd45cba5308f419cb2fe9a1e09dd0fb3dd77517f0cb4f2ec90429981626"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.35.0/forge-aarch64-apple-darwin"
    sha256 "2f44020e67368a9b7f155471409146acb231191ffe731b74b31403d556c875d9"
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
