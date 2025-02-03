class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.3.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.3.0/forge-x86_64-apple-darwin"
    sha256 "057efea5ff970e5c56cff2570c6d26c245d764742bb6cffa94964af33ccb08cc"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.3.0/forge-aarch64-apple-darwin"
    sha256 "057efea5ff970e5c56cff2570c6d26c245d764742bb6cffa94964af33ccb08cc"
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
