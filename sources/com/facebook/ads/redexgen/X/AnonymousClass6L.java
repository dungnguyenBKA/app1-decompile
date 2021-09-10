package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.MotionEvent;

/* renamed from: com.facebook.ads.redexgen.X.6L  reason: invalid class name */
public final class AnonymousClass6L {
    public static String[] A03;
    public final Context A00;
    public final AnonymousClass6F A01;
    public final EnumC02846i A02;

    static {
        A00();
    }

    public static void A00() {
        A03 = new String[]{"COmePc5O6jQNBThxNrU00eLA0sP62Ofb", "1OlTUJms59QGnZv6uedBszpwZ8CEYVJ", "oD0bBsFyrWHU6", "C7a4pm2tyO8SrXv1cdlxK2sPFdgwB5ae", "g8qGNC4JJd68o", "wdv0nL8gPgDp5YXIgWNDO16SJnt", "h7h0bvqqYit4L8HKMEE", "ho5Id5lQMxy9uaRyjuF"};
    }

    public AnonymousClass6L(Context context, AnonymousClass6F r2, EnumC02846i r3) {
        this.A01 = r2;
        this.A00 = context;
        this.A02 = r3;
    }

    /* JADX INFO: Multiple debug info for r0v7 com.facebook.ads.redexgen.X.6r: [D('toolTypeMove' int), D('actionIndex' int)] */
    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public final void A01(MotionEvent motionEvent) {
        String packageName;
        C02936r r0;
        int i;
        int i2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Context context = this.A00;
        if (context == null) {
            packageName = "";
        } else {
            packageName = context.getPackageName();
        }
        EnumC02846i r7 = this.A02;
        EnumC02846i r6 = EnumC02846i.A0G;
        if (A03[7].length() != 16) {
            A03[6] = "q52vtyV4o3lWIqbyVHb";
            if (r7 == r6) {
                r0 = null;
            } else {
                r0 = new C02936r(packageName);
            }
            float f = 1.0f;
            char c = 1;
            switch (motionEvent.getActionMasked()) {
                case 0:
                case 1:
                case 3:
                case 5:
                case 6:
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    if (Build.VERSION.SDK_INT >= 14) {
                        i = motionEvent.getToolType(actionIndex);
                    } else {
                        i = -1;
                    }
                    this.A01.A02(new XD(elapsedRealtime, r0, new AnonymousClass6P(motionEvent.getActionMasked(), pointerId, i, new float[]{motionEvent.getRawX(), motionEvent.getRawY()}, motionEvent.getSize(actionIndex), Math.min(motionEvent.getPressure(actionIndex), 1.0f), motionEvent.getOrientation(actionIndex))), AnonymousClass6E.A0E);
                    return;
                case 2:
                case 4:
                    int i3 = 0;
                    while (i3 < motionEvent.getPointerCount()) {
                        int pointerId2 = motionEvent.getPointerId(i3);
                        String[] strArr = A03;
                        if (strArr[2].length() != strArr[4].length()) {
                            break;
                        } else {
                            String[] strArr2 = A03;
                            strArr2[1] = "FtxLtPKiBWyCq8d2bMsvLwchXj4m1FL";
                            strArr2[5] = "2ZHjPJSTqIAuT8ks3iUv9R1XL7D";
                            if (Build.VERSION.SDK_INT >= 14) {
                                i2 = motionEvent.getToolType(i3);
                            } else {
                                i2 = -1;
                            }
                            int actionMasked = motionEvent.getActionMasked();
                            float[] fArr = new float[2];
                            fArr[0] = motionEvent.getRawX();
                            fArr[c] = motionEvent.getRawY();
                            this.A01.A02(new XD(elapsedRealtime, r0, new AnonymousClass6P(actionMasked, pointerId2, i2, fArr, motionEvent.getSize(i3), Math.min(motionEvent.getPressure(i3), f), motionEvent.getOrientation(i3))), AnonymousClass6E.A0E);
                            i3++;
                            f = 1.0f;
                            c = 1;
                        }
                    }
                    return;
                default:
                    return;
            }
        }
        throw new RuntimeException();
    }
}
