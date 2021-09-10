package defpackage;

import android.os.Bundle;
import java.util.List;
import java.util.Map;

/* renamed from: vy  reason: default package */
public interface vy {

    /* renamed from: vy$a */
    public interface a {
    }

    /* renamed from: vy$b */
    public interface b {
        void a(int i, Bundle bundle);
    }

    /* renamed from: vy$c */
    public static class c {
        public String a;
        public String b;
        public Object c;
        public String d;
        public long e;
        public String f;
        public Bundle g;
        public String h;
        public Bundle i;
        public long j;
        public String k;
        public Bundle l;
        public long m;
        public boolean n;
        public long o;
    }

    Map<String, Object> a(boolean z);

    void b(c cVar);

    a c(String str, b bVar);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    List<c> getConditionalUserProperties(String str, String str2);

    int getMaxUserProperties(String str);

    void logEvent(String str, String str2, Bundle bundle);
}
