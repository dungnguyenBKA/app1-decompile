package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;

public final class h implements s {
    private static final Uri c;
    private final LogPrinter b = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("local");
        c = builder.build();
    }

    @Override // com.google.android.gms.analytics.s
    public final void j(i iVar) {
        ArrayList arrayList = new ArrayList(iVar.e());
        Collections.sort(arrayList, new g());
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            String obj = ((k) arrayList.get(i)).toString();
            if (!TextUtils.isEmpty(obj)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(obj);
            }
        }
        this.b.println(sb.toString());
    }

    @Override // com.google.android.gms.analytics.s
    public final Uri zzb() {
        return c;
    }
}
