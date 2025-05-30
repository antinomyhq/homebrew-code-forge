class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.94.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.94.4/forge-x86_64-apple-darwin"
    sha256 "f1e7586fe265b96c6a7ac37168d067fb8d9cedcb5c6ccf6bc5143ddd9948b054"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.94.4/forge-aarch64-apple-darwin"
    sha256 "fd2b7c473fced9910e43d21e5e97d0fca5ba87178d7992176063285d75fed71d"
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
