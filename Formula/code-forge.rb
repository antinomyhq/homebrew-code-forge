class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.66.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.66.0/forge-x86_64-apple-darwin"
    sha256 "c6455f68552266188cc41eb32d50a7037c968a700409d05812ce0cf473e93dab"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.66.0/forge-aarch64-apple-darwin"
    sha256 "8aa55c2dafb1c527d37d74833ecad926ff7c53979497c6ae3522410b8a71590c"
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
