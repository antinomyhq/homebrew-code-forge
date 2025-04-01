class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.53.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.53.4/forge-x86_64-apple-darwin"
    sha256 "a1adcd2bbaec6a299d1aeac30b8c04c4f537df1ff49a204aeb114fd82717480f"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.53.4/forge-aarch64-apple-darwin"
    sha256 "1a07188367872202645a26f8b4be9a35867a19a605ed58b857be2be340cc2f52"
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
