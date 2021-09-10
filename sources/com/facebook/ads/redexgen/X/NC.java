package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import java.util.Arrays;

public class NC implements View.OnClickListener {
    public static byte[] A02;
    public final /* synthetic */ XJ A00;
    public final /* synthetic */ NE A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 66);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-58, -57, -44, -38, -39, -97, -57, -47, -58, -45, -48, 20, 33, 23, 37, 34, 28, 23, -31, 28, 33, 39, 24, 33, 39, -31, 20, 22, 39, 28, 34, 33, -31, 9, -4, -8, 10};
    }

    public NC(NE ne, XJ xj) {
        this.A01 = ne;
        this.A00 = xj;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (TextUtils.isEmpty(this.A01.A06)) {
                    return;
                }
                if (!A00(0, 11, 35).equals(this.A01.A06)) {
                    Intent intent = new Intent(A00(11, 26, 113), Uri.parse(this.A01.A06));
                    intent.addFlags(268435456);
                    this.A00.A0A().A7i();
                    C0616Kp.A0C(this.A00, intent);
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
