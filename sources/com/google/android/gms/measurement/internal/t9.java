package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
public final class t9 extends s8 {
    private String d;
    private Set<Integer> e;
    private Map<Integer, o9> f;
    private Long g;
    private Long h;

    t9(b9 b9Var) {
        super(b9Var);
    }

    private final o9 m(Integer num) {
        if (this.f.containsKey(num)) {
            return this.f.get(num);
        }
        o9 o9Var = new o9(this, this.d);
        this.f.put(num, o9Var);
        return o9Var;
    }

    private final boolean n(int i, int i2) {
        o9 o9Var = this.f.get(Integer.valueOf(i));
        if (o9Var == null) {
            return false;
        }
        return o9.c(o9Var).get(i2);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.s8
    public final boolean k() {
        return false;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:411:0x02d8 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:412:0x030e */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:415:0x030e */
    /* JADX WARN: Type inference failed for: r0v35, types: [x, e0] */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v61, types: [java.util.Map] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x0303, code lost:
        if (r5 != null) goto L_0x02d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:267:0x0716, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:268:0x0717, code lost:
        r5 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:269:0x0719, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:270:0x071a, code lost:
        r65 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:280:0x0745, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:342:0x08f0, code lost:
        if (r13 == null) goto L_0x08f3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:381:0x0a1c, code lost:
        if (r7 != false) goto L_0x0a27;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0171, code lost:
        if (r5 != null) goto L_0x014f;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x03d1  */
    /* JADX WARNING: Removed duplicated region for block: B:220:0x0598  */
    /* JADX WARNING: Removed duplicated region for block: B:267:0x0716 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:232:0x067a] */
    /* JADX WARNING: Removed duplicated region for block: B:275:0x073a  */
    /* JADX WARNING: Removed duplicated region for block: B:280:0x0745  */
    /* JADX WARNING: Removed duplicated region for block: B:286:0x0761  */
    /* JADX WARNING: Removed duplicated region for block: B:304:0x0803  */
    /* JADX WARNING: Removed duplicated region for block: B:347:0x08fb  */
    /* JADX WARNING: Removed duplicated region for block: B:388:0x0a4d  */
    /* JADX WARNING: Removed duplicated region for block: B:405:0x0ae1  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0176  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x01b0 A[Catch:{ SQLiteException -> 0x0220 }] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0249  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x025f  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.google.android.gms.internal.measurement.zzcx> l(java.lang.String r64, java.util.List<com.google.android.gms.internal.measurement.zzdb> r65, java.util.List<com.google.android.gms.internal.measurement.zzdu> r66, java.lang.Long r67, java.lang.Long r68) {
        /*
        // Method dump skipped, instructions count: 2791
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.t9.l(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }
}
