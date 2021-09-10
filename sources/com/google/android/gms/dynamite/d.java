package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

final class d implements DynamiteModule.b {
    d() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.AbstractC0050b bVar) {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        int b = bVar.b(context, str);
        aVar.a = b;
        if (b != 0) {
            aVar.b = bVar.a(context, str, false);
        } else {
            aVar.b = bVar.a(context, str, true);
        }
        int i = aVar.a;
        if (i == 0 && aVar.b == 0) {
            aVar.c = 0;
        } else if (i >= aVar.b) {
            aVar.c = -1;
        } else {
            aVar.c = 1;
        }
        return aVar;
    }
}
