package com.zjsoft.baseadlib;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.g;
import com.google.ads.consent.ConsentStatus;
import defpackage.bc0;
import photoeditor.cutout.backgrounderaser.R;

public class b {
    public static boolean a = false;
    public static int b = 0;
    private static bc0 c = null;
    private static int d = -1;

    static class a implements View.OnClickListener {
        final /* synthetic */ Context b;
        final /* synthetic */ g c;

        a(Context context, g gVar) {
            this.b = context;
            this.c = gVar;
        }

        public void onClick(View view) {
            cc0.y(this.b, ConsentStatus.PERSONALIZED);
            this.c.dismiss();
        }
    }

    /* renamed from: com.zjsoft.baseadlib.b$b  reason: collision with other inner class name */
    static class DialogInterface$OnCancelListenerC0091b implements DialogInterface.OnCancelListener {
        final /* synthetic */ Context b;

        DialogInterface$OnCancelListenerC0091b(Context context) {
            this.b = context;
        }

        public void onCancel(DialogInterface dialogInterface) {
            cc0.y(this.b, ConsentStatus.PERSONALIZED);
            dialogInterface.dismiss();
        }
    }

    public static class c {
        public String a;
        public int b;
        public String c;
    }

    public static boolean a(Context context) {
        if (d == -1) {
            d = cc0.l(context) == ConsentStatus.NON_PERSONALIZED ? 1 : 0;
        }
        return d == 1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00de  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void b(android.app.Activity r13, com.zjsoft.baseadlib.b.c r14) {
        /*
        // Method dump skipped, instructions count: 230
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zjsoft.baseadlib.b.b(android.app.Activity, com.zjsoft.baseadlib.b$c):void");
    }

    public static void c(bc0.a aVar) {
        c = bc0.c(aVar);
    }

    public static boolean d(Context context, String str, boolean z) {
        try {
            if (cc0.f(context) == 0 && cc0.l(context) == ConsentStatus.UNKNOWN) {
                g a2 = new g.a(context).a();
                a2.show();
                View inflate = LayoutInflater.from(context).inflate(z ? R.layout.a9 : R.layout.a8, (ViewGroup) null);
                a2.getWindow().setContentView(inflate);
                a2.getWindow().setBackgroundDrawableResource(R.color.a2);
                TextView textView = (TextView) inflate.findViewById(R.id.bd);
                textView.setText(context.getString(R.string.a4).replace("#", str));
                textView.setTextSize(2, 14.0f / context.getResources().getConfiguration().fontScale);
                ((Button) inflate.findViewById(R.id.bc)).setOnClickListener(new a(context, a2));
                a2.setOnCancelListener(new DialogInterface$OnCancelListenerC0091b(context));
                a2.setCancelable(true);
                a2.setCanceledOnTouchOutside(false);
                fc0.a().b(context, "Consent:show dialog");
                return true;
            }
        } catch (Throwable th) {
            fc0.a().c(context, th);
        }
        fc0.a().b(context, "Consent: Do not show dialog");
        return false;
    }
}
