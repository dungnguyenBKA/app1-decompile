package defpackage;

import android.database.Cursor;
import android.os.Build;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* renamed from: f4  reason: default package */
public class f4 {
    public final String a;
    public final Map<String, a> b;
    public final Set<b> c;
    public final Set<d> d;

    /* renamed from: f4$a */
    public static class a {
        public final String a;
        public final String b;
        public final int c;
        public final boolean d;
        public final int e;

        public a(String str, String str2, boolean z, int i) {
            this.a = str;
            this.b = str2;
            this.d = z;
            this.e = i;
            int i2 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i2 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i2 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i2 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.c = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (Build.VERSION.SDK_INT < 20) {
                if ((this.e > 0) != (aVar.e > 0)) {
                    return false;
                }
            } else if (this.e != aVar.e) {
                return false;
            }
            if (this.a.equals(aVar.a) && this.d == aVar.d && this.c == aVar.c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.a.hashCode() * 31) + this.c) * 31) + (this.d ? 1231 : 1237)) * 31) + this.e;
        }

        public String toString() {
            StringBuilder q = ic.q("Column{name='");
            ic.v(q, this.a, '\'', ", type='");
            ic.v(q, this.b, '\'', ", affinity='");
            q.append(this.c);
            q.append('\'');
            q.append(", notNull=");
            q.append(this.d);
            q.append(", primaryKeyPosition=");
            q.append(this.e);
            q.append('}');
            return q.toString();
        }
    }

    /* renamed from: f4$b */
    public static class b {
        public final String a;
        public final String b;
        public final String c;
        public final List<String> d;
        public final List<String> e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = Collections.unmodifiableList(list);
            this.e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a.equals(bVar.a) && this.b.equals(bVar.b) && this.c.equals(bVar.c) && this.d.equals(bVar.d)) {
                return this.e.equals(bVar.e);
            }
            return false;
        }

        public int hashCode() {
            int w = ic.w(this.c, ic.w(this.b, this.a.hashCode() * 31, 31), 31);
            return this.e.hashCode() + ((this.d.hashCode() + w) * 31);
        }

        public String toString() {
            StringBuilder q = ic.q("ForeignKey{referenceTable='");
            ic.v(q, this.a, '\'', ", onDelete='");
            ic.v(q, this.b, '\'', ", onUpdate='");
            ic.v(q, this.c, '\'', ", columnNames=");
            q.append(this.d);
            q.append(", referenceColumnNames=");
            q.append(this.e);
            q.append('}');
            return q.toString();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: f4$c */
    public static class c implements Comparable<c> {
        final int b;
        final int c;
        final String d;
        final String e;

        c(int i, int i2, String str, String str2) {
            this.b = i;
            this.c = i2;
            this.d = str;
            this.e = str2;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public int compareTo(c cVar) {
            c cVar2 = cVar;
            int i = this.b - cVar2.b;
            return i == 0 ? this.c - cVar2.c : i;
        }
    }

    /* renamed from: f4$d */
    public static class d {
        public final String a;
        public final boolean b;
        public final List<String> c;

        public d(String str, boolean z, List<String> list) {
            this.a = str;
            this.b = z;
            this.c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            if (this.b != dVar.b || !this.c.equals(dVar.c)) {
                return false;
            }
            if (this.a.startsWith("index_")) {
                return dVar.a.startsWith("index_");
            }
            return this.a.equals(dVar.a);
        }

        public int hashCode() {
            int i;
            if (this.a.startsWith("index_")) {
                i = -1184239155;
            } else {
                i = this.a.hashCode();
            }
            return this.c.hashCode() + (((i * 31) + (this.b ? 1 : 0)) * 31);
        }

        public String toString() {
            StringBuilder q = ic.q("Index{name='");
            ic.v(q, this.a, '\'', ", unique=");
            q.append(this.b);
            q.append(", columns=");
            q.append(this.c);
            q.append('}');
            return q.toString();
        }
    }

    public f4(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        Set<d> set3;
        this.a = str;
        this.b = Collections.unmodifiableMap(map);
        this.c = Collections.unmodifiableSet(set);
        if (set2 == null) {
            set3 = null;
        } else {
            set3 = Collections.unmodifiableSet(set2);
        }
        this.d = set3;
    }

    /* JADX INFO: finally extract failed */
    public static f4 a(h4 h4Var, String str) {
        int i;
        List<c> list;
        int i2;
        int i3;
        Cursor D = h4Var.D("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (D.getColumnCount() > 0) {
                int columnIndex = D.getColumnIndex("name");
                int columnIndex2 = D.getColumnIndex("type");
                int columnIndex3 = D.getColumnIndex("notnull");
                int columnIndex4 = D.getColumnIndex("pk");
                while (D.moveToNext()) {
                    String string = D.getString(columnIndex);
                    hashMap.put(string, new a(string, D.getString(columnIndex2), D.getInt(columnIndex3) != 0, D.getInt(columnIndex4)));
                }
            }
            D.close();
            HashSet hashSet = new HashSet();
            Cursor D2 = h4Var.D("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex5 = D2.getColumnIndex(FacebookAdapter.KEY_ID);
                int columnIndex6 = D2.getColumnIndex("seq");
                int columnIndex7 = D2.getColumnIndex("table");
                int columnIndex8 = D2.getColumnIndex("on_delete");
                int columnIndex9 = D2.getColumnIndex("on_update");
                List<c> b2 = b(D2);
                int count = D2.getCount();
                int i4 = 0;
                while (i4 < count) {
                    D2.moveToPosition(i4);
                    if (D2.getInt(columnIndex6) != 0) {
                        i3 = columnIndex5;
                        i2 = columnIndex6;
                        list = b2;
                        i = count;
                    } else {
                        int i5 = D2.getInt(columnIndex5);
                        i3 = columnIndex5;
                        ArrayList arrayList = new ArrayList();
                        i2 = columnIndex6;
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = ((ArrayList) b2).iterator();
                        while (it.hasNext()) {
                            c cVar = (c) it.next();
                            if (cVar.b == i5) {
                                arrayList.add(cVar.d);
                                arrayList2.add(cVar.e);
                            }
                            b2 = b2;
                            count = count;
                        }
                        list = b2;
                        i = count;
                        hashSet.add(new b(D2.getString(columnIndex7), D2.getString(columnIndex8), D2.getString(columnIndex9), arrayList, arrayList2));
                    }
                    i4++;
                    columnIndex5 = i3;
                    columnIndex6 = i2;
                    b2 = list;
                    count = i;
                }
                D2.close();
                Cursor D3 = h4Var.D("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex10 = D3.getColumnIndex("name");
                    int columnIndex11 = D3.getColumnIndex("origin");
                    int columnIndex12 = D3.getColumnIndex("unique");
                    HashSet hashSet2 = null;
                    if (columnIndex10 != -1 && columnIndex11 != -1) {
                        if (columnIndex12 != -1) {
                            HashSet hashSet3 = new HashSet();
                            while (D3.moveToNext()) {
                                if ("c".equals(D3.getString(columnIndex11))) {
                                    d c2 = c(h4Var, D3.getString(columnIndex10), D3.getInt(columnIndex12) == 1);
                                    if (c2 != null) {
                                        hashSet3.add(c2);
                                    }
                                }
                            }
                            D3.close();
                            hashSet2 = hashSet3;
                            return new f4(str, hashMap, hashSet, hashSet2);
                        }
                    }
                    return new f4(str, hashMap, hashSet, hashSet2);
                } finally {
                    D3.close();
                }
            } catch (Throwable th) {
                D2.close();
                throw th;
            }
        } catch (Throwable th2) {
            D.close();
            throw th2;
        }
    }

    private static List<c> b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(FacebookAdapter.KEY_ID);
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static d c(h4 h4Var, String str, boolean z) {
        Cursor D = h4Var.D("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = D.getColumnIndex("seqno");
            int columnIndex2 = D.getColumnIndex("cid");
            int columnIndex3 = D.getColumnIndex("name");
            if (!(columnIndex == -1 || columnIndex2 == -1)) {
                if (columnIndex3 != -1) {
                    TreeMap treeMap = new TreeMap();
                    while (D.moveToNext()) {
                        if (D.getInt(columnIndex2) >= 0) {
                            int i = D.getInt(columnIndex);
                            treeMap.put(Integer.valueOf(i), D.getString(columnIndex3));
                        }
                    }
                    ArrayList arrayList = new ArrayList(treeMap.size());
                    arrayList.addAll(treeMap.values());
                    d dVar = new d(str, z, arrayList);
                    D.close();
                    return dVar;
                }
            }
            return null;
        } finally {
            D.close();
        }
    }

    public boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (obj == null || f4.class != obj.getClass()) {
            return false;
        }
        f4 f4Var = (f4) obj;
        String str = this.a;
        if (str == null ? f4Var.a != null : !str.equals(f4Var.a)) {
            return false;
        }
        Map<String, a> map = this.b;
        if (map == null ? f4Var.b != null : !map.equals(f4Var.b)) {
            return false;
        }
        Set<b> set2 = this.c;
        if (set2 == null ? f4Var.c != null : !set2.equals(f4Var.c)) {
            return false;
        }
        Set<d> set3 = this.d;
        if (set3 == null || (set = f4Var.d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.a;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.b;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.c;
        if (set != null) {
            i = set.hashCode();
        }
        return hashCode2 + i;
    }

    public String toString() {
        StringBuilder q = ic.q("TableInfo{name='");
        ic.v(q, this.a, '\'', ", columns=");
        q.append(this.b);
        q.append(", foreignKeys=");
        q.append(this.c);
        q.append(", indices=");
        q.append(this.d);
        q.append('}');
        return q.toString();
    }
}
