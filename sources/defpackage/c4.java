package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* renamed from: c4  reason: default package */
public final class c4 {
    private static final Object f = new Object();
    private static c4 g;
    private final Context a;
    private final HashMap<BroadcastReceiver, ArrayList<c>> b = new HashMap<>();
    private final HashMap<String, ArrayList<c>> c = new HashMap<>();
    private final ArrayList<b> d = new ArrayList<>();
    private final Handler e;

    /* renamed from: c4$a */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                c4.this.a();
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: c4$b */
    public static final class b {
        final Intent a;
        final ArrayList<c> b;

        b(Intent intent, ArrayList<c> arrayList) {
            this.a = intent;
            this.b = arrayList;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: c4$c */
    public static final class c {
        final IntentFilter a;
        final BroadcastReceiver b;
        boolean c;
        boolean d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.a = intentFilter;
            this.b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.b);
            sb.append(" filter=");
            sb.append(this.a);
            if (this.d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private c4(Context context) {
        this.a = context;
        this.e = new a(context.getMainLooper());
    }

    public static c4 b(Context context) {
        c4 c4Var;
        synchronized (f) {
            if (g == null) {
                g = new c4(context.getApplicationContext());
            }
            c4Var = g;
        }
        return c4Var;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001c, code lost:
        if (r3 >= r1) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
        r4 = r2[r3];
        r5 = r4.b.size();
        r6 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0027, code lost:
        if (r6 >= r5) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
        r7 = r4.b.get(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        if (r7.d != false) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0035, code lost:
        r7.b.onReceive(r10.a, r4.a);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003e, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0041, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001a, code lost:
        r3 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
            r10 = this;
        L_0x0000:
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<c4$c>> r0 = r10.b
            monitor-enter(r0)
            java.util.ArrayList<c4$b> r1 = r10.d     // Catch:{ all -> 0x0044 }
            int r1 = r1.size()     // Catch:{ all -> 0x0044 }
            if (r1 > 0) goto L_0x000d
            monitor-exit(r0)     // Catch:{ all -> 0x0044 }
            return
        L_0x000d:
            c4$b[] r2 = new defpackage.c4.b[r1]     // Catch:{ all -> 0x0044 }
            java.util.ArrayList<c4$b> r3 = r10.d     // Catch:{ all -> 0x0044 }
            r3.toArray(r2)     // Catch:{ all -> 0x0044 }
            java.util.ArrayList<c4$b> r3 = r10.d     // Catch:{ all -> 0x0044 }
            r3.clear()     // Catch:{ all -> 0x0044 }
            monitor-exit(r0)     // Catch:{ all -> 0x0044 }
            r0 = 0
            r3 = 0
        L_0x001c:
            if (r3 >= r1) goto L_0x0000
            r4 = r2[r3]
            java.util.ArrayList<c4$c> r5 = r4.b
            int r5 = r5.size()
            r6 = 0
        L_0x0027:
            if (r6 >= r5) goto L_0x0041
            java.util.ArrayList<c4$c> r7 = r4.b
            java.lang.Object r7 = r7.get(r6)
            c4$c r7 = (defpackage.c4.c) r7
            boolean r8 = r7.d
            if (r8 != 0) goto L_0x003e
            android.content.BroadcastReceiver r7 = r7.b
            android.content.Context r8 = r10.a
            android.content.Intent r9 = r4.a
            r7.onReceive(r8, r9)
        L_0x003e:
            int r6 = r6 + 1
            goto L_0x0027
        L_0x0041:
            int r3 = r3 + 1
            goto L_0x001c
        L_0x0044:
            r1 = move-exception
            monitor-exit(r0)
            goto L_0x0048
        L_0x0047:
            throw r1
        L_0x0048:
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c4.a():void");
    }

    public void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.b) {
            c cVar = new c(intentFilter, broadcastReceiver);
            ArrayList<c> arrayList = this.b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(cVar);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<c> arrayList2 = this.c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.c.put(action, arrayList2);
                }
                arrayList2.add(cVar);
            }
        }
    }

    public boolean d(Intent intent) {
        boolean z;
        String str;
        ArrayList<c> arrayList;
        String str2;
        int i;
        ArrayList arrayList2;
        synchronized (this.b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z2 = (intent.getFlags() & 8) != 0;
            if (z2) {
                String str3 = "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent;
            }
            ArrayList<c> arrayList3 = this.c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z2) {
                    String str4 = "Action list: " + arrayList3;
                }
                ArrayList arrayList4 = null;
                int i2 = 0;
                while (i2 < arrayList3.size()) {
                    c cVar = arrayList3.get(i2);
                    if (z2) {
                        String str5 = "Matching against filter " + cVar.a;
                    }
                    if (cVar.c) {
                        i = i2;
                        arrayList = arrayList3;
                        str2 = action;
                        str = resolveTypeIfNeeded;
                        arrayList2 = arrayList4;
                    } else {
                        i = i2;
                        str2 = action;
                        arrayList2 = arrayList4;
                        arrayList = arrayList3;
                        str = resolveTypeIfNeeded;
                        int match = cVar.a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z2) {
                                Integer.toHexString(match);
                            }
                            arrayList4 = arrayList2 == null ? new ArrayList() : arrayList2;
                            arrayList4.add(cVar);
                            cVar.c = true;
                            i2 = i + 1;
                            action = str2;
                            arrayList3 = arrayList;
                            resolveTypeIfNeeded = str;
                        }
                    }
                    arrayList4 = arrayList2;
                    i2 = i + 1;
                    action = str2;
                    arrayList3 = arrayList;
                    resolveTypeIfNeeded = str;
                }
                z = false;
                if (arrayList4 != null) {
                    for (int i3 = 0; i3 < arrayList4.size(); i3++) {
                        ((c) arrayList4.get(i3)).c = false;
                    }
                    this.d.add(new b(intent, arrayList4));
                    if (!this.e.hasMessages(1)) {
                        this.e.sendEmptyMessage(1);
                    }
                    return true;
                }
            } else {
                z = false;
            }
            return z;
        }
    }

    public void e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.b) {
            ArrayList<c> remove = this.b.remove(broadcastReceiver);
            if (remove != null) {
                for (int size = remove.size() - 1; size >= 0; size--) {
                    c cVar = remove.get(size);
                    cVar.d = true;
                    for (int i = 0; i < cVar.a.countActions(); i++) {
                        String action = cVar.a.getAction(i);
                        ArrayList<c> arrayList = this.c.get(action);
                        if (arrayList != null) {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                                c cVar2 = arrayList.get(size2);
                                if (cVar2.b == broadcastReceiver) {
                                    cVar2.d = true;
                                    arrayList.remove(size2);
                                }
                            }
                            if (arrayList.size() <= 0) {
                                this.c.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }
}
