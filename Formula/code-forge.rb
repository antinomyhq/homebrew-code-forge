class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.28.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.28.0/forge-x86_64-apple-darwin"
    sha256 "fc11e9685b238335cd6f32133422f7a7541e8f519c9f7b93962a69be9be96b30"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.28.0/forge-aarch64-apple-darwin"
    sha256 "59688d3c39b495033b1b6733015cf89dcb7dc54982943823e5be1ef270e7f3b7"
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
