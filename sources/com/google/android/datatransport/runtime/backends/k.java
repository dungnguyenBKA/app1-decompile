package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
class k implements e {
    private final a a;
    private final i b;
    private final Map<String, m> c = new HashMap();

    static class a {
        private final Context a;
        private Map<String, String> b = null;

        a(Context context) {
            this.a = context;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x003a  */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x0044  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.google.android.datatransport.runtime.backends.d a(java.lang.String r15) {
            /*
            // Method dump skipped, instructions count: 254
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.backends.k.a.a(java.lang.String):com.google.android.datatransport.runtime.backends.d");
        }
    }

    @Inject
    k(Context context, i iVar) {
        a aVar = new a(context);
        this.a = aVar;
        this.b = iVar;
    }

    @Override // com.google.android.datatransport.runtime.backends.e
    public synchronized m a(String str) {
        if (this.c.containsKey(str)) {
            return this.c.get(str);
        }
        d a2 = this.a.a(str);
        if (a2 == null) {
            return null;
        }
        m create = a2.create(this.b.a(str));
        this.c.put(str, create);
        return create;
    }
}
