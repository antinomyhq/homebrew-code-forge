class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.91.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.91.0/forge-x86_64-apple-darwin"
    sha256 "898d27df193d1a930866c09b5e766006ab7552a9c381279ffe702ed1f35ff799"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.91.0/forge-aarch64-apple-darwin"
    sha256 "b3b2dab02394319ee4c3b3aedd6546f2637427b2162e1ab9e459c098091fa206"
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
