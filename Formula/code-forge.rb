class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.104.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.104.3/forge-x86_64-apple-darwin"
    sha256 "03b9c381c22635ed738f8e5e6409de10cd2be1e66428536c3bdbd1d9363d8a00"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.104.3/forge-aarch64-apple-darwin"
    sha256 "9df414e405c4913fa4b0bf127cbe39f12d2e4426fd379bf27beb18437eeafb6e"
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
