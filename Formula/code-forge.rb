class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.83.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.83.1/forge-x86_64-apple-darwin"
    sha256 "766b5c4edc995979f49b54b0ada7f036fb98fd35f6f2b5b0bb7c8be8d7e64b4d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.83.1/forge-aarch64-apple-darwin"
    sha256 "a6dea96e9625deab9a69d1005dbae2f7ff779e9a21756dad4e7772de4ba3cb1c"
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
