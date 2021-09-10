package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

final class c implements DynamiteModule.b {
    c() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.a a(Context context, String str, DynamiteModule.b.AbstractC0050b bVar) {
        DynamiteModule.b.a aVar = new DynamiteModule.b.a();
        int b = bVar.b(context, str);
        aVar.a = b;
        if (b != 0) {
            aVar.c = -1;
        } else {
            int a = bVar.a(context, str, true);
            aVar.b = a;
            if (a != 0) {
                aVar.c = 1;
            }
        }
        return aVar;
    }
}
