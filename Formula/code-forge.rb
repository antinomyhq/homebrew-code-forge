class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.2/forge-x86_64-apple-darwin"
    sha256 "767a2b99acac6734856d5e950793f0d8afd5214894a99226a8c45885cbd6ad4c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.2/forge-aarch64-apple-darwin"
    sha256 "e3f08e00a1a58265aeae9a0caa059b8002a37e3c6635a30117c0ab04f687a2be"
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
