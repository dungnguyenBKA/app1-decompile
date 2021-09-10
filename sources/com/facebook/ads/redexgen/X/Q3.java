package com.facebook.ads.redexgen.X;

import android.widget.MediaController;

public class Q3 implements MediaController.MediaPlayerControl {
    public static String[] A01;
    public final /* synthetic */ HQ A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"T46fCpiGc88W2sm67KitVw29EyPc3", "CnzVRlVQiaWVzZBS", "ndpW2a6BPo0GfPTTlqn3VUL3zbZB353", "6dBvfVqLyh6nhF4N5m", "imXeYKfRY50epxOYIoCDJpdee5DGPOn9", "a2YCts1Ck8i", "mjIxnllGj7l0AybsaVU42LegCoMqgA9", "OPSSIwvLFtyh4B3JmayX8W92hCUnvGiN"};
    }

    public Q3(HQ hq) {
        this.A00 = hq;
    }

    public final boolean canPause() {
        return true;
    }

    public final boolean canSeekBackward() {
        return true;
    }

    public final boolean canSeekForward() {
        return true;
    }

    public final int getAudioSessionId() {
        if (HQ.A01(this.A00) != null) {
            return HQ.A01(this.A00).A05();
        }
        return 0;
    }

    public final int getBufferPercentage() {
        if (HQ.A01(this.A00) != null) {
            return HQ.A01(this.A00).A06();
        }
        return 0;
    }

    public final int getCurrentPosition() {
        return this.A00.getCurrentPosition();
    }

    public final int getDuration() {
        return this.A00.getDuration();
    }

    public final boolean isPlaying() {
        return HQ.A01(this.A00) != null && HQ.A01(this.A00).A0K();
    }

    public final void pause() {
        if (HQ.A02(this.A00) != null) {
            QC A02 = HQ.A02(this.A00);
            String[] strArr = A01;
            if (strArr[1].length() != strArr[5].length()) {
                A01[3] = "BHfWGVDMvGTMo8ZI3A6S5KtrLH6Ee";
                A02.AAk();
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void seekTo(int i) {
        this.A00.seekTo(i);
    }

    public final void start() {
        if (HQ.A02(this.A00) != null) {
            HQ.A02(this.A00).AAl();
        }
    }
}
