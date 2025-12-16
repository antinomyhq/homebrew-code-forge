class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.12.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.12.1/forge-x86_64-apple-darwin"
    sha256 "097ce22ec2dec57a6e269fe236232000541e7deef7ea8867c328a119c0c16df4"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.12.1/forge-aarch64-apple-darwin"
    sha256 "e9638cad6c52b597ff334d13560156617c98816271b1edee20b9bec145735a56"
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
