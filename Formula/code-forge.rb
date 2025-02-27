class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.25.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.25.3/forge-x86_64-apple-darwin"
    sha256 "d58361bc4dd28c9c8a7d1070a7fb1098b8f6ccaa648136e6e7059cb106638a29"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.25.3/forge-aarch64-apple-darwin"
    sha256 "b65100a3a0fb39a098f1bb060825a973b854a0a4a0494ca40e852713e70f7249"
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
