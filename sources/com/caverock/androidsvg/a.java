package com.caverock.androidsvg;

import com.caverock.androidsvg.c;
import com.caverock.androidsvg.f;
import java.util.ArrayList;
import java.util.List;
import org.xml.sax.SAXException;

public class a {
    private e a = null;
    private boolean b = false;

    /* renamed from: com.caverock.androidsvg.a$a  reason: collision with other inner class name */
    public static class C0035a {
        public String a = null;
        public b b;
        public String c = null;

        public C0035a(String str, b bVar, String str2) {
            this.a = str;
            this.b = bVar;
            this.c = str2;
        }
    }

    /* access modifiers changed from: private */
    public enum b {
        EXISTS,
        EQUALS,
        INCLUDES,
        DASHMATCH
    }

    /* access modifiers changed from: private */
    public static class c extends f.b {
        public c(String str) {
            super(str.replaceAll("(?s)/\\*.*?\\*/", ""));
        }

        public String r() {
            int i;
            int i2;
            if (f()) {
                i = this.b;
            } else {
                int i3 = this.b;
                int charAt = this.a.charAt(i3);
                if (charAt == 45) {
                    charAt = a();
                }
                if ((charAt < 65 || charAt > 90) && ((charAt < 97 || charAt > 122) && charAt != 95)) {
                    i2 = i3;
                } else {
                    int a = a();
                    while (true) {
                        if ((a < 65 || a > 90) && ((a < 97 || a > 122) && !((a >= 48 && a <= 57) || a == 45 || a == 95))) {
                            break;
                        }
                        a = a();
                    }
                    i2 = this.b;
                }
                this.b = i3;
                i = i2;
            }
            int i4 = this.b;
            if (i == i4) {
                return null;
            }
            String substring = this.a.substring(i4, i);
            this.b = i;
            return substring;
        }
    }

    /* access modifiers changed from: private */
    public enum d {
        DESCENDANT,
        CHILD,
        FOLLOWS
    }

    public enum e {
        all,
        aural,
        braille,
        embossed,
        handheld,
        print,
        projection,
        screen,
        tty,
        tv
    }

    public static class f {
        public h a = null;
        public c.d0 b = null;

        public f(h hVar, c.d0 d0Var) {
            this.a = hVar;
            this.b = d0Var;
        }

        public String toString() {
            return this.a + " {}";
        }
    }

    public static class g {
        private List<f> a = null;

        public void a(f fVar) {
            if (this.a == null) {
                this.a = new ArrayList();
            }
            for (int i = 0; i < this.a.size(); i++) {
                if (this.a.get(i).a.b > fVar.a.b) {
                    this.a.add(i, fVar);
                    return;
                }
            }
            this.a.add(fVar);
        }

        public void b(g gVar) {
            if (gVar.a != null) {
                if (this.a == null) {
                    this.a = new ArrayList(gVar.a.size());
                }
                for (f fVar : gVar.a) {
                    this.a.add(fVar);
                }
            }
        }

        public List<f> c() {
            return this.a;
        }

        public boolean d() {
            List<f> list = this.a;
            return list == null || list.isEmpty();
        }

        public String toString() {
            if (this.a == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (f fVar : this.a) {
                sb.append(fVar.toString());
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    public static class h {
        public List<i> a = null;
        public int b = 0;

        public void a() {
            this.b += 100;
        }

        public i b(int i) {
            return this.a.get(i);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            for (i iVar : this.a) {
                sb.append(iVar);
                sb.append(' ');
            }
            sb.append('(');
            sb.append(this.b);
            sb.append(')');
            return sb.toString();
        }
    }

    /* access modifiers changed from: private */
    public static class i {
        private static /* synthetic */ int[] e;
        public d a = null;
        public String b = null;
        public List<C0035a> c = null;
        public List<String> d = null;

        public i(d dVar, String str) {
            this.a = dVar == null ? d.DESCENDANT : dVar;
            this.b = str;
        }

        public void a(String str, b bVar, String str2) {
            if (this.c == null) {
                this.c = new ArrayList();
            }
            this.c.add(new C0035a(str, bVar, str2));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            d dVar = this.a;
            if (dVar == d.CHILD) {
                sb.append("> ");
            } else if (dVar == d.FOLLOWS) {
                sb.append("+ ");
            }
            String str = this.b;
            if (str == null) {
                str = "*";
            }
            sb.append(str);
            List<C0035a> list = this.c;
            if (list != null) {
                for (C0035a aVar : list) {
                    sb.append('[');
                    sb.append(aVar.a);
                    int[] iArr = e;
                    if (iArr == null) {
                        b.values();
                        iArr = new int[]{1, 2, 3, 4};
                        e = iArr;
                    }
                    int i = iArr[aVar.b.ordinal()];
                    if (i == 2) {
                        sb.append('=');
                        sb.append(aVar.c);
                    } else if (i == 3) {
                        sb.append("~=");
                        sb.append(aVar.c);
                    } else if (i == 4) {
                        sb.append("|=");
                        sb.append(aVar.c);
                    }
                    sb.append(']');
                }
            }
            List<String> list2 = this.d;
            if (list2 != null) {
                for (String str2 : list2) {
                    sb.append(':');
                    sb.append(str2);
                }
            }
            return sb.toString();
        }
    }

    public a(e eVar) {
        this.a = eVar;
    }

    private static int a(List<c.i0> list, int i2, c.k0 k0Var) {
        c.i0 i0Var;
        if (i2 < 0 || list.get(i2) != (i0Var = k0Var.b)) {
            return -1;
        }
        int i3 = 0;
        for (c.m0 m0Var : i0Var.a()) {
            if (m0Var == k0Var) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public static boolean b(String str, e eVar) {
        c cVar = new c(str);
        cVar.q();
        List<e> e2 = e(cVar);
        if (cVar.f()) {
            return c(e2, eVar);
        }
        throw new SAXException("Invalid @media type list");
    }

    private static boolean c(List<e> list, e eVar) {
        for (e eVar2 : list) {
            if (eVar2 == e.all) {
                return true;
            }
            if (eVar2 == eVar) {
                return true;
            }
        }
        return false;
    }

    private static List<e> e(c cVar) {
        ArrayList arrayList = new ArrayList();
        while (!cVar.f()) {
            try {
                arrayList.add(e.valueOf(cVar.m(',')));
                if (!cVar.p()) {
                    break;
                }
            } catch (IllegalArgumentException unused) {
                throw new SAXException("Invalid @media type list");
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:256:0x0134 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:253:0x0260 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:255:0x0134 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX DEBUG: Type inference failed for r5v15. Raw type applied. Possible types: java.util.List<com.caverock.androidsvg.a$i>, java.util.List */
    /* JADX WARN: Type inference failed for: r14v2, types: [com.caverock.androidsvg.a$d] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r7v24, types: [com.caverock.androidsvg.a$i] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x0262  */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x0274  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x0279  */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x0318  */
    /* JADX WARNING: Removed duplicated region for block: B:225:0x0371 A[EDGE_INSN: B:225:0x0371->B:211:0x0371 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:247:0x0292 A[EDGE_INSN: B:247:0x0292->B:152:0x0292 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:253:0x0260 A[EDGE_INSN: B:253:0x0260->B:140:0x0260 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x013c  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.caverock.androidsvg.a.g f(com.caverock.androidsvg.a.c r18) {
        /*
        // Method dump skipped, instructions count: 903
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.a.f(com.caverock.androidsvg.a$c):com.caverock.androidsvg.a$g");
    }

    private static boolean g(h hVar, int i2, List<c.i0> list, int i3, c.k0 k0Var) {
        i iVar = hVar.a.get(i2);
        if (!j(iVar, list, i3, k0Var)) {
            return false;
        }
        d dVar = iVar.a;
        if (dVar == d.DESCENDANT) {
            if (i2 == 0) {
                return true;
            }
            while (i3 >= 0) {
                if (i(hVar, i2 - 1, list, i3)) {
                    return true;
                }
                i3--;
            }
            return false;
        } else if (dVar == d.CHILD) {
            return i(hVar, i2 - 1, list, i3);
        } else {
            int a2 = a(list, i3, k0Var);
            if (a2 <= 0) {
                return false;
            }
            return g(hVar, i2 - 1, list, i3, (c.k0) k0Var.b.a().get(a2 - 1));
        }
    }

    protected static boolean h(h hVar, c.k0 k0Var) {
        int i2;
        ArrayList arrayList = new ArrayList();
        c.i0 i0Var = k0Var.b;
        while (true) {
            i2 = 0;
            if (i0Var == null) {
                break;
            }
            arrayList.add(0, i0Var);
            i0Var = ((c.m0) i0Var).b;
        }
        int size = arrayList.size() - 1;
        List<i> list = hVar.a;
        if ((list == null ? 0 : list.size()) == 1) {
            return j(hVar.b(0), arrayList, size, k0Var);
        }
        List<i> list2 = hVar.a;
        if (list2 != null) {
            i2 = list2.size();
        }
        return g(hVar, i2 - 1, arrayList, size, k0Var);
    }

    private static boolean i(h hVar, int i2, List<c.i0> list, int i3) {
        i iVar = hVar.a.get(i2);
        c.k0 k0Var = (c.k0) list.get(i3);
        if (!j(iVar, list, i3, k0Var)) {
            return false;
        }
        d dVar = iVar.a;
        if (dVar == d.DESCENDANT) {
            if (i2 == 0) {
                return true;
            }
            while (i3 > 0) {
                i3--;
                if (i(hVar, i2 - 1, list, i3)) {
                    return true;
                }
            }
            return false;
        } else if (dVar == d.CHILD) {
            return i(hVar, i2 - 1, list, i3 - 1);
        } else {
            int a2 = a(list, i3, k0Var);
            if (a2 <= 0) {
                return false;
            }
            return g(hVar, i2 - 1, list, i3, (c.k0) k0Var.b.a().get(a2 - 1));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0070  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean j(com.caverock.androidsvg.a.i r5, java.util.List<com.caverock.androidsvg.c.i0> r6, int r7, com.caverock.androidsvg.c.k0 r8) {
        /*
        // Method dump skipped, instructions count: 135
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.a.j(com.caverock.androidsvg.a$i, java.util.List, int, com.caverock.androidsvg.c$k0):boolean");
    }

    public g d(String str) {
        c cVar = new c(str);
        cVar.q();
        return f(cVar);
    }
}
