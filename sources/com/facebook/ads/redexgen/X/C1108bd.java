package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.TreeSet;

/* renamed from: com.facebook.ads.redexgen.X.bd  reason: case insensitive filesystem */
public final class C1108bd implements AbstractC0535Hh {
    public static boolean A06;
    public static byte[] A07;
    public static String[] A08;
    public static final HashSet<File> A09 = new HashSet<>();
    public long A00;
    public boolean A01;
    public final AbstractC1105ba A02;
    public final C0543Hp A03;
    public final File A04;
    public final HashMap<String, ArrayList<AbstractC0534Hg>> A05;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 71);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A07 = new byte[]{106, 69, 68, 95, 67, 78, 89, 11, 120, 66, 70, 91, 71, 78, 104, 74, 72, 67, 78, 11, 66, 69, 88, 95, 74, 69, 72, 78, 11, 94, 88, 78, 88, 11, 95, 67, 78, 11, 77, 68, 71, 79, 78, 89, 17, 11, 82, 104, 108, 113, 109, 100, 66, 96, 98, 105, 100, 94, 100, 96, 125, 97, 104, 78, 108, 110, 101, 104, 35, 100, 99, 100, 121, 100, 108, 97, 100, 119, 104, 37, 36, 0, 39, 60, 33, 58, 61, 52, 115, 58, 61, 55, 54, 43, 115, 53, 58, 63, 54, 115, 53, 50, 58, 63, 54, 55, 28, 30, 28, 23, 26, 27, 32, 28, 16, 17, 11, 26, 17, 11, 32, 22, 17, 27, 26, 7, 81, 26, 7, 22};
    }

    public static void A07() {
        A08 = new String[]{"eH4syubUz2tR66H4aXOA", "1d5DSBS1mhWRL66KnLBZBpyHNgki7Rvu", "v9uLJ4dIwyz0Tb4FaO07wTfk2F9lBV8v", "E1Se3PKWItYNl2w7Z0lUvGDZb88eKAvD", "3tvSVqejLSP4DWhBG1hRQ7meIfhtlUpf", "obkGL38LbEEikSiwJ4pDHOfB9GOmWii2", "dwvV", "8LO"};
    }

    static {
        A07();
        A06();
    }

    public C1108bd(File file, AbstractC1105ba baVar) {
        this(file, baVar, null, false);
    }

    public C1108bd(File file, AbstractC1105ba baVar, C0543Hp hp) {
        if (A0E(file)) {
            this.A04 = file;
            this.A02 = baVar;
            this.A03 = hp;
            this.A05 = new HashMap<>();
            ConditionVariable conditionVariable = new ConditionVariable();
            new C0548Hu(this, A03(57, 24, 74), conditionVariable).start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException(A03(0, 46, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS) + file);
    }

    public C1108bd(File file, AbstractC1105ba baVar, byte[] bArr, boolean z) {
        this(file, baVar, new C0543Hp(file, bArr, z));
    }

    private C1109be A00(String str, long j) throws C0533Hf {
        C1109be A072;
        C0542Ho A0A = this.A03.A0A(str);
        if (A0A == null) {
            return C1109be.A02(str, j);
        }
        while (true) {
            A072 = A0A.A07(j);
            if (!A072.A05 || A072.A03.exists()) {
                return A072;
            }
            A05();
        }
        return A072;
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final synchronized C1109be AE8(String str, long j) throws InterruptedException, C0533Hf {
        C1109be A022;
        while (true) {
            A022 = AE9(str, j);
            if (A022 == null) {
                wait();
            }
        }
        return A022;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final synchronized C1109be AE9(String str, long j) throws C0533Hf {
        boolean z = this.A01;
        if (A08[0].length() != 10) {
            A08[3] = "i1JHZi6uUAd1FxW2ulRZEzuIvuRnbT2M";
            C0551Hx.A04(!z);
            C1109be A002 = A00(str, j);
            if (A002.A05) {
                C1109be A082 = this.A03.A0A(str).A08(A002);
                A0D(A002, A082);
                return A082;
            }
            C0542Ho A0B = this.A03.A0B(str);
            if (A0B.A0E()) {
                return null;
            }
            A0B.A0C(true);
            return A002;
        }
        throw new RuntimeException();
    }

    /* access modifiers changed from: private */
    public void A04() {
        C1109be span;
        if (!this.A04.exists()) {
            this.A04.mkdirs();
            return;
        }
        this.A03.A0F();
        File[] listFiles = this.A04.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!file.getName().equals(A03(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 24, 56))) {
                    if (file.length() > 0) {
                        span = C1109be.A00(file, this.A03);
                    } else {
                        span = null;
                    }
                    if (span != null) {
                        A0B(span);
                    } else {
                        file.delete();
                    }
                }
            }
            this.A03.A0G();
            try {
                this.A03.A0H();
            } catch (C0533Hf e) {
                Log.e(A03(46, 11, 70), A03(81, 25, 20), e);
            }
        }
    }

    private void A05() throws C0533Hf {
        ArrayList arrayList = new ArrayList();
        for (C0542Ho cachedContent : this.A03.A0E()) {
            Iterator<C1109be> it = cachedContent.A09().iterator();
            while (it.hasNext()) {
                C1109be next = it.next();
                if (!next.A03.exists()) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            A09((C0539Hl) arrayList.get(i), false);
        }
        this.A03.A0G();
        this.A03.A0H();
    }

    private void A08(C0539Hl hl) {
        ArrayList<AbstractC0534Hg> arrayList = this.A05.get(hl.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).ABg(this, hl);
            }
        }
        this.A02.ABg(this, hl);
    }

    private void A09(C0539Hl hl, boolean z) throws C0533Hf {
        C0542Ho A0A = this.A03.A0A(hl.A04);
        if (A0A != null && A0A.A0F(hl)) {
            this.A00 -= hl.A01;
            if (z) {
                try {
                    this.A03.A0I(A0A.A03);
                    this.A03.A0H();
                } catch (Throwable th) {
                    A08(hl);
                    throw th;
                }
            }
            A08(hl);
        }
    }

    private void A0B(C1109be beVar) {
        this.A03.A0B(beVar.A04).A0A(beVar);
        this.A00 += beVar.A01;
        A0C(beVar);
    }

    private void A0C(C1109be beVar) {
        ArrayList<AbstractC0534Hg> arrayList = this.A05.get(beVar.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).ABf(this, beVar);
            }
        }
        this.A02.ABf(this, beVar);
    }

    private void A0D(C1109be beVar, C0539Hl hl) {
        ArrayList<AbstractC0534Hg> arrayList = this.A05.get(beVar.A04);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).ABh(this, beVar, hl);
            }
        }
        this.A02.ABh(this, beVar, hl);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0021, code lost:
        if (com.facebook.ads.redexgen.X.C1108bd.A08[3].charAt(1) == '1') goto L_0x0029;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0028, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0029, code lost:
        r2 = com.facebook.ads.redexgen.X.C1108bd.A08;
        r2[4] = "IKpjWyjLYfQpiBWntIG6MWMycmL9Fi0T";
        r2[1] = "4yvCWPfRVkN5zdYzJ7yblhOZllwt9yTn";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0035, code lost:
        return r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean A0E(java.io.File r3) {
        /*
            java.lang.Class<com.facebook.ads.redexgen.X.bd> r2 = com.facebook.ads.redexgen.X.C1108bd.class
            monitor-enter(r2)
            boolean r0 = com.facebook.ads.redexgen.X.C1108bd.A06     // Catch:{ all -> 0x0036 }
            if (r0 == 0) goto L_0x000a
            r0 = 1
            monitor-exit(r2)
            return r0
        L_0x000a:
            java.util.HashSet<java.io.File> r1 = com.facebook.ads.redexgen.X.C1108bd.A09
            java.io.File r0 = r3.getAbsoluteFile()
            boolean r3 = r1.add(r0)
            monitor-exit(r2)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1108bd.A08
            r0 = 3
            r1 = r1[r0]
            r0 = 1
            char r1 = r1.charAt(r0)
            r0 = 49
            if (r1 == r0) goto L_0x0029
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x0029:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1108bd.A08
            java.lang.String r1 = "IKpjWyjLYfQpiBWntIG6MWMycmL9Fi0T"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "4yvCWPfRVkN5zdYzJ7yblhOZllwt9yTn"
            r0 = 1
            r2[r0] = r1
            return r3
        L_0x0036:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1108bd.A0E(java.io.File):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized void A3R(String str, C0547Ht ht) throws C0533Hf {
        C0551Hx.A04(!this.A01);
        this.A03.A0J(str, ht);
        this.A03.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized void A45(File file) throws C0533Hf {
        boolean z = true;
        C0551Hx.A04(!this.A01);
        C1109be A002 = C1109be.A00(file, this.A03);
        C0551Hx.A04(A002 != null);
        C0542Ho A0A = this.A03.A0A(A002.A04);
        C0551Hx.A01(A0A);
        C0551Hx.A04(A0A.A0E());
        if (file.exists()) {
            if (file.length() == 0) {
                file.delete();
                return;
            }
            long A003 = C0546Hs.A00(A0A.A06());
            if (A003 != -1) {
                if (A002.A02 + A002.A01 > A003) {
                    z = false;
                }
                C0551Hx.A04(z);
            }
            A0B(A002);
            this.A03.A0H();
            notifyAll();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized long A5n() {
        C0551Hx.A04(!this.A01);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized long A5o(String str, long j, long j2) {
        C0542Ho A0A;
        C0551Hx.A04(!this.A01);
        A0A = this.A03.A0A(str);
        return A0A != null ? A0A.A05(j, j2) : -j2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    @NonNull
    public final synchronized NavigableSet<C0539Hl> A5p(String str) {
        TreeSet treeSet;
        C0551Hx.A04(!this.A01);
        C0542Ho A0A = this.A03.A0A(str);
        if (A0A == null || A0A.A0D()) {
            treeSet = new TreeSet();
        } else {
            treeSet = new TreeSet((Collection) A0A.A09());
        }
        return treeSet;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized long A60(String str) {
        return C0546Hs.A00(A61(str));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized AbstractC0545Hr A61(String str) {
        C0551Hx.A04(!this.A01);
        return this.A03.A0C(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized void AD3(C0539Hl hl) {
        C0551Hx.A04(!this.A01);
        C0542Ho A0A = this.A03.A0A(hl.A04);
        C0551Hx.A01(A0A);
        C0551Hx.A04(A0A.A0E());
        A0A.A0C(false);
        this.A03.A0I(A0A.A03);
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized void ADA(C0539Hl hl) throws C0533Hf {
        C0551Hx.A04(!this.A01);
        A09(hl, true);
        if (A08[0].length() != 10) {
            A08[2] = "mDPrx6EC7JunlTiRZIITWuDkOY6RMx2Q";
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized void ADh(String str, long j) throws C0533Hf {
        C0547Ht ht = new C0547Ht();
        C0546Hs.A05(ht, j);
        A3R(str, ht);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0535Hh
    public final synchronized File AE6(String str, long j, long j2) throws C0533Hf {
        C0542Ho A0A;
        C0551Hx.A04(!this.A01);
        A0A = this.A03.A0A(str);
        C0551Hx.A01(A0A);
        C0551Hx.A04(A0A.A0E());
        if (!this.A04.exists()) {
            this.A04.mkdirs();
            A05();
        }
        this.A02.ABi(this, str, j, j2);
        return C1109be.A04(this.A04, A0A.A02, j, System.currentTimeMillis());
    }
}
