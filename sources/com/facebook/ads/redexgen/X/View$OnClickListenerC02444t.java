package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;

/* renamed from: com.facebook.ads.redexgen.X.4t  reason: invalid class name and case insensitive filesystem */
public class View$OnClickListenerC02444t implements View.OnClickListener {
    public static String[] A04;
    public final /* synthetic */ Context A00;
    public final /* synthetic */ LinearLayout A01;
    public final /* synthetic */ TT A02;
    public final /* synthetic */ C1143cD A03;

    static {
        A00();
    }

    public static void A00() {
        A04 = new String[]{"KRKQmCMMKryGk4zgpNIytFvS3TD6bAeJ", "Xc6miAmzcu08Y", "37gtSV6CsPxBYDJYgwQ03wIm04Bn1UoS", "vc4nNQQkh46pzBlyEmkoOi4CgZODKTHg", "arJKEayC0J1tSfFqlaoS22WOKdh4xl60", "Efttk19GyNCXlxxyYR0mavkkkhSaw2Qp", "IGlWio493rL8eTjetjpBhFYcUhZqKyAr", ""};
    }

    public View$OnClickListenerC02444t(TT tt, C1143cD cDVar, Context context, LinearLayout linearLayout) {
        this.A02 = tt;
        this.A03 = cDVar;
        this.A00 = context;
        this.A01 = linearLayout;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A03.A1I();
                if (Build.VERSION.SDK_INT >= 16 && J4.A1T(this.A00)) {
                    this.A01.performAccessibilityAction(128, null);
                }
            } catch (Throwable th) {
                if (A04[5].charAt(5) != 'z') {
                    A04[6] = "upfEaDqgYzKFHRA83M0GBorRIFZJY191";
                    KT.A00(th, this);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }
}
