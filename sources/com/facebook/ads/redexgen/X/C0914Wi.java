package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.telephony.TelephonyManager;

/* renamed from: com.facebook.ads.redexgen.X.Wi  reason: case insensitive filesystem */
public class C0914Wi implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"YvgwWocx1FADdeAzbpsmJqKucTKVrLw8", "IN5yo6alVzQxSBDS0LSAMVLc9G2MRZFn", "HAZTu6IPNZsD1qj0M1i9utr9DJx5S0QZ", "N5cGJfQ0ESKW2WKzc5hPaTPWXOaKWBwf", "tNMXMhxZjOCLmtsXwerOChNpJkA4NIz8", "qe3nCZLHllYVPimtyVQbZz0eRg0vYsPF", "hksQgw", "nUQ4NN4k5WyfvhfMBfttwidjpDAXB5K7"};
    }

    public C0914Wi(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A00 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            C0922Wq wq = this.A00;
            return wq.A05(wq.A00.getVoiceNetworkType());
        }
        C0922Wq wq2 = this.A00;
        TelephonyManager telephonyManager = wq2.A00;
        if (A01[2].charAt(0) != 'L') {
            A01[1] = "ynGeEoYIomGmDWEGPoJ89qRpE67tUZnz";
            return wq2.A05(telephonyManager.getNetworkType());
        }
        throw new RuntimeException();
    }
}
