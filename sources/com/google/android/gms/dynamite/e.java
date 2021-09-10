package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

final class e implements DynamiteModule.b {
    e() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.AbstractC0050b bVar) {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        aVar.a = bVar.b(context, str);
        int a = bVar.a(context, str, true);
        aVar.b = a;
        int i = aVar.a;
        if (i == 0 && a == 0) {
            aVar.c = 0;
        } else if (a >= i) {
            aVar.c = 1;
        } else {
            aVar.c = -1;
        }
        return aVar;
    }
}
