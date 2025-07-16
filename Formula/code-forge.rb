class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.100.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.100.1/forge-x86_64-apple-darwin"
    sha256 "68a074802de7d048a7771b8e6cef7033178eff17c7898178960669761390fd6f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.100.1/forge-aarch64-apple-darwin"
    sha256 "babd6c1b8e8ca12a40f6850632646da880109350e31cfda36da6b2465204c106"
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
