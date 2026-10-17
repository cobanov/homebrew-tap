class Kota < Formula
  desc "Claude plan usage on your Flipper Zero, over Bluetooth"
  homepage "https://github.com/cobanov/kota"
  url "https://github.com/cobanov/kota/releases/download/v0.2.0/kota-0.2.0-macos.tar.gz"
  sha256 "a0b97e585f5280dc590b39c252370ede97c9fdba6d5685a5beacbcae9e804283"
  license "MIT"

  depends_on :macos

  def install
    bin.install "kota"
  end

  service do
    run [opt_bin/"kota"]
    keep_alive true
    log_path var/"log/kota.log"
    error_log_path var/"log/kota.log"
  end

  def caveats
    <<~EOS
      Start the agent (it also starts at login):
        brew services start kota
      macOS will ask whether kota may use Bluetooth: allow it.
      Then open Apps > Bluetooth > Kota on your Flipper.
    EOS
  end

  test do
    assert_equal "ok", shell_output("#{bin}/kota --self-check").strip
  end
end
