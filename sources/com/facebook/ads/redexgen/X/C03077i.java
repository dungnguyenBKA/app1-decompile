package com.facebook.ads.redexgen.X;

import android.media.AudioManager;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.7i */
public final class C03077i extends MP {
    public static byte[] A04;
    public static String[] A05;
    public WeakReference<AudioManager.OnAudioFocusChangeListener> A00 = null;
    public final AbstractC0629Le A01 = new C03107l(this);
    public final KW A02 = new C03097k(this);
    public final KQ A03 = new C03087j(this);

    static {
        A06();
        A05();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 96);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A04 = new byte[]{69, 81, 64, 77, 75};
    }

    public static void A06() {
        A05 = new String[]{"1cdJmqZo5JmjBSz3V6iIBc", "b5mtsG63LfUTmVo", "v7pUKp70YLsspQnihAQa", "8RT4D0PvYsYuyNKYG0J", "LG3ePim6beoWq", "NyBn7Ghd81GFryl", "6ZzG2MB7DBeQL6nfhWDwO", "j693JmATHJpRsHF"};
    }

    public C03077i(XJ xj) {
        super(xj);
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A03, this.A01, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A05(this.A02, this.A01, this.A03);
        }
        super.A08();
    }

    public final void onDetachedFromWindow() {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        AudioManager audioManager = (AudioManager) getContext().getApplicationContext().getSystemService(A02(0, 5, 68));
        WeakReference<AudioManager.OnAudioFocusChangeListener> weakReference = this.A00;
        if (weakReference == null) {
            onAudioFocusChangeListener = null;
        } else {
            onAudioFocusChangeListener = weakReference.get();
        }
        audioManager.abandonAudioFocus(onAudioFocusChangeListener);
        super.onDetachedFromWindow();
        if (A05[4].length() != 13) {
            throw new RuntimeException();
        }
        A05[3] = "22FJBjB3Y4dWSYUEkMs";
    }
}
