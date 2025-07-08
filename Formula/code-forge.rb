class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.98.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.98.2/forge-x86_64-apple-darwin"
    sha256 "bec7868f154d841c18c692d0a6670077b06ad0bb2f4a5fbaaa5bbc563838da06"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.98.2/forge-aarch64-apple-darwin"
    sha256 "dae0eb26f9b8e31b1d92f71873ff1629d404fb68c0ff487790a64821c05e2681"
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
