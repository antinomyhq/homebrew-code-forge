class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.37.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.37.0/forge-x86_64-apple-darwin"
    sha256 "32b9640002b4f53c0a9bbb6bcabe1404d58414495f5acf9d723e089d89b4cea9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.37.0/forge-aarch64-apple-darwin"
    sha256 "3dc800e318c190eed22e48a49a41564f91fa75fd508a2c29f1e94801fd2ee992"
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
