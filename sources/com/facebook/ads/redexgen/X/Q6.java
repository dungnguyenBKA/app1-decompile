package com.facebook.ads.redexgen.X;

import android.widget.MediaController;

public class Q6 implements MediaController.MediaPlayerControl {
    public static String[] A01;
    public final /* synthetic */ HO A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"hSLXxwS3ED2PXa4HWxT5O8AkoZWeLCaL", "Gmogcdio2x0gXeHeLgUduGgoR45wUaaW", "srtP07DjK9aYu1B8NyoR8EE0J7RhN7X5", "MH7", "NBYiw3cvWUp2yNoHdye4I6uBFIshebL3", "osH0FOpWNHuyeeWL1EivPIw0cJCzEheb", "y4KJdcSo65PTSQflVKQ3KiIVJaTfePYu", "FLJEaU0xa"};
    }

    public Q6(HO ho) {
        this.A00 = ho;
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
        if (HO.A00(this.A00) != null) {
            return HO.A00(this.A00).getAudioSessionId();
        }
        return 0;
    }

    public final int getBufferPercentage() {
        return 0;
    }

    public final int getCurrentPosition() {
        return this.A00.getCurrentPosition();
    }

    public final int getDuration() {
        return this.A00.getDuration();
    }

    public final boolean isPlaying() {
        if (HO.A00(this.A00) != null) {
            HO ho = this.A00;
            if (A01[3].length() != 27) {
                A01[1] = "lkPRs4KbLtabABAzVL2ijXaoS745wM0q";
                if (HO.A00(ho).isPlaying()) {
                    return true;
                }
            } else {
                throw new RuntimeException();
            }
        }
        return false;
    }

    public final void pause() {
        if (HO.A02(this.A00) != null) {
            HO.A02(this.A00).AAk();
        }
    }

    public final void seekTo(int i) {
        this.A00.seekTo(i);
    }

    public final void start() {
        if (HO.A02(this.A00) != null) {
            HO.A02(this.A00).AAl();
        }
    }
}
