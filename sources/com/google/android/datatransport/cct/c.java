package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.d;
import java.net.URL;

final /* synthetic */ class c implements ut {
    private static final c a = new c();

    private c() {
    }

    public static ut a() {
        return a;
    }

    public Object b(Object obj, Object obj2) {
        d.a aVar = (d.a) obj;
        d.b bVar = (d.b) obj2;
        URL url = bVar.b;
        if (url == null) {
            return null;
        }
        st.a("CctTransportBackend", "Following redirect to: %s", url);
        return new d.a(bVar.b, aVar.b, aVar.c);
    }
}
