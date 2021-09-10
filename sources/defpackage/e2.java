package defpackage;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import defpackage.f2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.apache.http.HttpStatus;

/* renamed from: e2  reason: default package */
public class e2 {
    static final c0<String, Typeface> a = new c0<>(16);
    private static final f2 b = new f2("fonts", 10, 10000);
    static final Object c = new Object();
    static final e0<String, ArrayList<f2.d<g>>> d = new e0<>();
    private static final Comparator<byte[]> e = new d();
    public static final /* synthetic */ int f = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: e2$a */
    public static class a implements Callable<g> {
        final /* synthetic */ Context b;
        final /* synthetic */ d2 c;
        final /* synthetic */ int d;
        final /* synthetic */ String e;

        a(Context context, d2 d2Var, int i, String str) {
            this.b = context;
            this.c = d2Var;
            this.d = i;
            this.e = str;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public g call() {
            g b2 = e2.b(this.b, this.c, this.d);
            Typeface typeface = b2.a;
            if (typeface != null) {
                e2.a.put(this.e, typeface);
            }
            return b2;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: e2$b */
    public static class b implements f2.d<g> {
        final /* synthetic */ j1 a;
        final /* synthetic */ Handler b;

        b(j1 j1Var, Handler handler) {
            this.a = j1Var;
            this.b = handler;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.f2.d
        public void a(g gVar) {
            g gVar2 = gVar;
            if (gVar2 == null) {
                this.a.a(1, this.b);
                return;
            }
            int i = gVar2.b;
            if (i == 0) {
                this.a.b(gVar2.a, this.b);
            } else {
                this.a.a(i, this.b);
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: e2$c */
    public static class c implements f2.d<g> {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x001c, code lost:
            if (r0 >= r2.size()) goto L_0x002a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x001e, code lost:
            r2.get(r0).a(r5);
            r0 = r0 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x002a, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0017, code lost:
            r0 = 0;
         */
        /* renamed from: b */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(defpackage.e2.g r5) {
            /*
                r4 = this;
                java.lang.Object r0 = defpackage.e2.c
                monitor-enter(r0)
                e0<java.lang.String, java.util.ArrayList<f2$d<e2$g>>> r1 = defpackage.e2.d     // Catch:{ all -> 0x002b }
                java.lang.String r2 = r4.a     // Catch:{ all -> 0x002b }
                java.lang.Object r2 = r1.get(r2)     // Catch:{ all -> 0x002b }
                java.util.ArrayList r2 = (java.util.ArrayList) r2     // Catch:{ all -> 0x002b }
                if (r2 != 0) goto L_0x0011
                monitor-exit(r0)     // Catch:{ all -> 0x002b }
                return
            L_0x0011:
                java.lang.String r3 = r4.a     // Catch:{ all -> 0x002b }
                r1.remove(r3)     // Catch:{ all -> 0x002b }
                monitor-exit(r0)     // Catch:{ all -> 0x002b }
                r0 = 0
            L_0x0018:
                int r1 = r2.size()
                if (r0 >= r1) goto L_0x002a
                java.lang.Object r1 = r2.get(r0)
                f2$d r1 = (defpackage.f2.d) r1
                r1.a(r5)
                int r0 = r0 + 1
                goto L_0x0018
            L_0x002a:
                return
            L_0x002b:
                r5 = move-exception
                monitor-exit(r0)
                goto L_0x002f
            L_0x002e:
                throw r5
            L_0x002f:
                goto L_0x002e
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.e2.c.a(e2$g):void");
        }
    }

    /* renamed from: e2$d */
    static class d implements Comparator<byte[]> {
        d() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int i;
            int i2;
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length != bArr4.length) {
                i2 = bArr3.length;
                i = bArr4.length;
            } else {
                for (int i3 = 0; i3 < bArr3.length; i3++) {
                    if (bArr3[i3] != bArr4[i3]) {
                        i2 = bArr3[i3];
                        i = bArr4[i3];
                    }
                }
                return 0;
            }
            return (i2 == 1 ? 1 : 0) - (i == 1 ? 1 : 0);
        }
    }

    /* renamed from: e2$e */
    public static class e {
        private final int a;
        private final f[] b;

        public e(int i, f[] fVarArr) {
            this.a = i;
            this.b = fVarArr;
        }

        public f[] a() {
            return this.b;
        }

        public int b() {
            return this.a;
        }
    }

    /* renamed from: e2$f */
    public static class f {
        private final Uri a;
        private final int b;
        private final int c;
        private final boolean d;
        private final int e;

        public f(Uri uri, int i, int i2, boolean z, int i3) {
            Objects.requireNonNull(uri);
            this.a = uri;
            this.b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
        }

        public int a() {
            return this.e;
        }

        public int b() {
            return this.b;
        }

        public Uri c() {
            return this.a;
        }

        public int d() {
            return this.c;
        }

        public boolean e() {
            return this.d;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: e2$g */
    public static final class g {
        final Typeface a;
        final int b;

        g(Typeface typeface, int i) {
            this.a = typeface;
            this.b = i;
        }
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [e2$f[], android.database.Cursor] */
    public static e a(Context context, CancellationSignal cancellationSignal, d2 d2Var) {
        List<List<byte[]>> list;
        Cursor cursor;
        Uri uri;
        boolean z;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String c2 = d2Var.c();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(c2, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(ic.i("No package found for authority: ", c2));
        } else if (resolveContentProvider.packageName.equals(d2Var.d())) {
            Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, e);
            if (d2Var.a() != null) {
                list = d2Var.a();
            } else {
                list = c1.p(resources, 0);
            }
            int i = 0;
            while (true) {
                cursor = 0;
                if (i >= list.size()) {
                    resolveContentProvider = cursor;
                    break;
                }
                ArrayList arrayList2 = new ArrayList(list.get(i));
                Collections.sort(arrayList2, e);
                if (arrayList.size() == arrayList2.size()) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= arrayList.size()) {
                            z = true;
                            break;
                        } else if (!Arrays.equals((byte[]) arrayList.get(i2), (byte[]) arrayList2.get(i2))) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                z = false;
                if (z) {
                    break;
                }
                i++;
            }
            if (resolveContentProvider == null) {
                return new e(1, cursor);
            }
            String str = resolveContentProvider.authority;
            ArrayList arrayList3 = new ArrayList();
            Uri build = new Uri.Builder().scheme("content").authority(str).build();
            Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            try {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{d2Var.e()}, null, null);
                if (cursor != null && cursor.getCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("result_code");
                    ArrayList arrayList4 = new ArrayList();
                    int columnIndex2 = cursor.getColumnIndex("_id");
                    int columnIndex3 = cursor.getColumnIndex("file_id");
                    int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                    int columnIndex5 = cursor.getColumnIndex("font_weight");
                    int columnIndex6 = cursor.getColumnIndex("font_italic");
                    while (cursor.moveToNext()) {
                        int i3 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                        int i4 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                        if (columnIndex3 == -1) {
                            uri = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                        } else {
                            uri = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                        }
                        arrayList4.add(new f(uri, i4, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : HttpStatus.SC_BAD_REQUEST, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i3));
                    }
                    arrayList3 = arrayList4;
                }
                return new e(0, (f[]) arrayList3.toArray(new f[0]));
            } finally {
                if (cursor != 0) {
                    cursor.close();
                }
            }
        } else {
            throw new PackageManager.NameNotFoundException("Found content provider " + c2 + ", but package was not " + d2Var.d());
        }
    }

    static g b(Context context, d2 d2Var, int i) {
        try {
            e a2 = a(context, null, d2Var);
            int i2 = -3;
            if (a2.b() == 0) {
                Typeface b2 = m1.b(context, null, a2.a(), i);
                if (b2 != null) {
                    i2 = 0;
                }
                return new g(b2, i2);
            }
            if (a2.b() == 1) {
                i2 = -2;
            }
            return new g(null, i2);
        } catch (PackageManager.NameNotFoundException unused) {
            return new g(null, -1);
        }
    }

    public static Typeface c(Context context, d2 d2Var, j1 j1Var, Handler handler, boolean z, int i, int i2) {
        b bVar;
        String str = d2Var.b() + "-" + i2;
        Typeface typeface = a.get(str);
        if (typeface != null) {
            if (j1Var != null) {
                j1Var.d(typeface);
            }
            return typeface;
        } else if (!z || i != -1) {
            a aVar = new a(context, d2Var, i2, str);
            if (z) {
                try {
                    return ((g) b.e(aVar, i)).a;
                } catch (InterruptedException unused) {
                    return null;
                }
            } else {
                if (j1Var == null) {
                    bVar = null;
                } else {
                    bVar = new b(j1Var, handler);
                }
                synchronized (c) {
                    e0<String, ArrayList<f2.d<g>>> e0Var = d;
                    ArrayList<f2.d<g>> arrayList = e0Var.get(str);
                    if (arrayList != null) {
                        if (bVar != null) {
                            arrayList.add(bVar);
                        }
                        return null;
                    }
                    if (bVar != null) {
                        ArrayList<f2.d<g>> arrayList2 = new ArrayList<>();
                        arrayList2.add(bVar);
                        e0Var.put(str, arrayList2);
                    }
                    b.d(aVar, new c(str));
                    return null;
                }
            }
        } else {
            g b2 = b(context, d2Var, i2);
            if (j1Var != null) {
                int i3 = b2.b;
                if (i3 == 0) {
                    j1Var.b(b2.a, handler);
                } else {
                    j1Var.a(i3, handler);
                }
            }
            return b2.a;
        }
    }
}
