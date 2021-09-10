package dev.drojian.rate;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

public class c {
    bd0 a = null;

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0056  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c(android.content.Context r5, boolean r6, boolean r7) {
        /*
        // Method dump skipped, instructions count: 134
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.drojian.rate.c.<init>(android.content.Context, boolean, boolean):void");
    }

    public static void b(Context context, bd0 bd0) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(bd0.f));
            if (!TextUtils.isEmpty(bd0.g)) {
                intent.setPackage(bd0.g);
            }
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(bd0.f));
                intent2.setFlags(268435456);
                context.startActivity(intent2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(boolean z) {
        this.a.i = z;
    }

    public void c(boolean z) {
        this.a.h = z;
    }

    public void d(Context context, dd0 dd0) {
        new b().h(context, this.a, dd0);
    }
}
