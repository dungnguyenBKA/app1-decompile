package defpackage;

import android.database.Cursor;
import androidx.room.j;
import androidx.work.m;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.vungle.warren.model.AdvertisementDBAdapter;
import defpackage.c6;
import java.util.ArrayList;
import java.util.List;

/* renamed from: e6  reason: default package */
public final class e6 implements d6 {
    private final androidx.room.g a;
    private final androidx.room.b b;
    private final j c;
    private final j d;
    private final j e;
    private final j f;
    private final j g;
    private final j h;
    private final j i;

    /* renamed from: e6$a */
    class a extends androidx.room.b<c6> {
        a(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l4, java.lang.Object] */
        /* JADX WARNING: Removed duplicated region for block: B:62:0x0187  */
        /* JADX WARNING: Removed duplicated region for block: B:71:0x019f  */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x01a5  */
        /* JADX WARNING: Removed duplicated region for block: B:75:0x01af A[SYNTHETIC, Splitter:B:75:0x01af] */
        @Override // androidx.room.b
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void d(defpackage.l4 r17, defpackage.c6 r18) {
            /*
            // Method dump skipped, instructions count: 479
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.e6.a.d(l4, java.lang.Object):void");
        }
    }

    /* renamed from: e6$b */
    class b extends j {
        b(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: e6$c */
    class c extends j {
        c(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: e6$d */
    class d extends j {
        d(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* renamed from: e6$e */
    class e extends j {
        e(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    /* renamed from: e6$f */
    class f extends j {
        f(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: e6$g */
    class g extends j {
        g(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: e6$h */
    class h extends j {
        h(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* renamed from: e6$i */
    class i extends j {
        i(e6 e6Var, androidx.room.g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    public e6(androidx.room.g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
        this.c = new b(this, gVar);
        this.d = new c(this, gVar);
        this.e = new d(this, gVar);
        this.f = new e(this, gVar);
        this.g = new f(this, gVar);
        this.h = new g(this, gVar);
        this.i = new h(this, gVar);
        new i(this, gVar);
    }

    public void a(String str) {
        this.a.b();
        l4 a2 = this.c.a();
        if (str == null) {
            a2.N(1);
        } else {
            a2.g(1, str);
        }
        this.a.c();
        try {
            a2.k();
            this.a.o();
        } finally {
            this.a.g();
            this.c.c(a2);
        }
    }

    public List<String> b() {
        androidx.room.i L = androidx.room.i.L("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                arrayList.add(a2.getString(0));
            }
            return arrayList;
        } finally {
            a2.close();
            L.S();
        }
    }

    public List<c6> c(int i2) {
        androidx.room.i iVar;
        Throwable th;
        androidx.room.i L = androidx.room.i.L("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        L.z(1, (long) i2);
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            int I = androidx.core.app.b.I(a2, FacebookAdapter.KEY_ID);
            int I2 = androidx.core.app.b.I(a2, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE);
            int I3 = androidx.core.app.b.I(a2, "worker_class_name");
            int I4 = androidx.core.app.b.I(a2, "input_merger_class_name");
            int I5 = androidx.core.app.b.I(a2, "input");
            int I6 = androidx.core.app.b.I(a2, "output");
            int I7 = androidx.core.app.b.I(a2, "initial_delay");
            int I8 = androidx.core.app.b.I(a2, "interval_duration");
            int I9 = androidx.core.app.b.I(a2, "flex_duration");
            int I10 = androidx.core.app.b.I(a2, "run_attempt_count");
            int I11 = androidx.core.app.b.I(a2, "backoff_policy");
            int I12 = androidx.core.app.b.I(a2, "backoff_delay_duration");
            int I13 = androidx.core.app.b.I(a2, "period_start_time");
            int I14 = androidx.core.app.b.I(a2, "minimum_retention_duration");
            iVar = L;
            try {
                int I15 = androidx.core.app.b.I(a2, "schedule_requested_at");
                int I16 = androidx.core.app.b.I(a2, "required_network_type");
                int i3 = I14;
                int I17 = androidx.core.app.b.I(a2, "requires_charging");
                int i4 = I13;
                int I18 = androidx.core.app.b.I(a2, "requires_device_idle");
                int i5 = I12;
                int I19 = androidx.core.app.b.I(a2, "requires_battery_not_low");
                int i6 = I11;
                int I20 = androidx.core.app.b.I(a2, "requires_storage_not_low");
                int i7 = I10;
                int I21 = androidx.core.app.b.I(a2, "trigger_content_update_delay");
                int i8 = I9;
                int I22 = androidx.core.app.b.I(a2, "trigger_max_content_delay");
                int i9 = I8;
                int I23 = androidx.core.app.b.I(a2, "content_uri_triggers");
                int i10 = I7;
                int i11 = I6;
                ArrayList arrayList = new ArrayList(a2.getCount());
                while (a2.moveToNext()) {
                    String string = a2.getString(I);
                    String string2 = a2.getString(I3);
                    androidx.work.c cVar = new androidx.work.c();
                    cVar.k(i6.c(a2.getInt(I16)));
                    cVar.m(a2.getInt(I17) != 0);
                    cVar.n(a2.getInt(I18) != 0);
                    cVar.l(a2.getInt(I19) != 0);
                    cVar.o(a2.getInt(I20) != 0);
                    cVar.p(a2.getLong(I21));
                    cVar.q(a2.getLong(I22));
                    cVar.j(i6.a(a2.getBlob(I23)));
                    c6 c6Var = new c6(string, string2);
                    c6Var.b = i6.d(a2.getInt(I2));
                    c6Var.d = a2.getString(I4);
                    c6Var.e = androidx.work.e.a(a2.getBlob(I5));
                    c6Var.f = androidx.work.e.a(a2.getBlob(i11));
                    c6Var.g = a2.getLong(i10);
                    c6Var.h = a2.getLong(i9);
                    c6Var.i = a2.getLong(i8);
                    c6Var.k = a2.getInt(i7);
                    i11 = i11;
                    c6Var.l = i6.b(a2.getInt(i6));
                    i7 = i7;
                    i6 = i6;
                    c6Var.m = a2.getLong(i5);
                    c6Var.n = a2.getLong(i4);
                    c6Var.o = a2.getLong(i3);
                    c6Var.p = a2.getLong(I15);
                    c6Var.j = cVar;
                    arrayList.add(c6Var);
                    i5 = i5;
                    I17 = I17;
                    I = I;
                    I3 = I3;
                    I19 = I19;
                    I16 = I16;
                    i10 = i10;
                    i3 = i3;
                    I15 = I15;
                    I4 = I4;
                    i4 = i4;
                    I5 = I5;
                    i9 = i9;
                    i8 = i8;
                    I18 = I18;
                }
                a2.close();
                iVar.S();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a2.close();
                iVar.S();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            iVar = L;
            a2.close();
            iVar.S();
            throw th;
        }
    }

    public List<androidx.work.e> d(String str) {
        androidx.room.i L = androidx.room.i.L("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                arrayList.add(androidx.work.e.a(a2.getBlob(0)));
            }
            return arrayList;
        } finally {
            a2.close();
            L.S();
        }
    }

    public List<c6> e() {
        androidx.room.i iVar;
        Throwable th;
        androidx.room.i L = androidx.room.i.L("SELECT * FROM workspec WHERE state=1", 0);
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            int I = androidx.core.app.b.I(a2, FacebookAdapter.KEY_ID);
            int I2 = androidx.core.app.b.I(a2, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE);
            int I3 = androidx.core.app.b.I(a2, "worker_class_name");
            int I4 = androidx.core.app.b.I(a2, "input_merger_class_name");
            int I5 = androidx.core.app.b.I(a2, "input");
            int I6 = androidx.core.app.b.I(a2, "output");
            int I7 = androidx.core.app.b.I(a2, "initial_delay");
            int I8 = androidx.core.app.b.I(a2, "interval_duration");
            int I9 = androidx.core.app.b.I(a2, "flex_duration");
            int I10 = androidx.core.app.b.I(a2, "run_attempt_count");
            int I11 = androidx.core.app.b.I(a2, "backoff_policy");
            int I12 = androidx.core.app.b.I(a2, "backoff_delay_duration");
            int I13 = androidx.core.app.b.I(a2, "period_start_time");
            int I14 = androidx.core.app.b.I(a2, "minimum_retention_duration");
            iVar = L;
            try {
                int I15 = androidx.core.app.b.I(a2, "schedule_requested_at");
                int I16 = androidx.core.app.b.I(a2, "required_network_type");
                int i2 = I14;
                int I17 = androidx.core.app.b.I(a2, "requires_charging");
                int i3 = I13;
                int I18 = androidx.core.app.b.I(a2, "requires_device_idle");
                int i4 = I12;
                int I19 = androidx.core.app.b.I(a2, "requires_battery_not_low");
                int i5 = I11;
                int I20 = androidx.core.app.b.I(a2, "requires_storage_not_low");
                int i6 = I10;
                int I21 = androidx.core.app.b.I(a2, "trigger_content_update_delay");
                int i7 = I9;
                int I22 = androidx.core.app.b.I(a2, "trigger_max_content_delay");
                int i8 = I8;
                int I23 = androidx.core.app.b.I(a2, "content_uri_triggers");
                int i9 = I7;
                int i10 = I6;
                ArrayList arrayList = new ArrayList(a2.getCount());
                while (a2.moveToNext()) {
                    String string = a2.getString(I);
                    String string2 = a2.getString(I3);
                    androidx.work.c cVar = new androidx.work.c();
                    cVar.k(i6.c(a2.getInt(I16)));
                    cVar.m(a2.getInt(I17) != 0);
                    cVar.n(a2.getInt(I18) != 0);
                    cVar.l(a2.getInt(I19) != 0);
                    cVar.o(a2.getInt(I20) != 0);
                    cVar.p(a2.getLong(I21));
                    cVar.q(a2.getLong(I22));
                    cVar.j(i6.a(a2.getBlob(I23)));
                    c6 c6Var = new c6(string, string2);
                    c6Var.b = i6.d(a2.getInt(I2));
                    c6Var.d = a2.getString(I4);
                    c6Var.e = androidx.work.e.a(a2.getBlob(I5));
                    c6Var.f = androidx.work.e.a(a2.getBlob(i10));
                    c6Var.g = a2.getLong(i9);
                    c6Var.h = a2.getLong(i8);
                    c6Var.i = a2.getLong(i7);
                    c6Var.k = a2.getInt(i6);
                    i10 = i10;
                    c6Var.l = i6.b(a2.getInt(i5));
                    c6Var.m = a2.getLong(i4);
                    i6 = i6;
                    c6Var.n = a2.getLong(i3);
                    i3 = i3;
                    c6Var.o = a2.getLong(i2);
                    i2 = i2;
                    c6Var.p = a2.getLong(I15);
                    c6Var.j = cVar;
                    arrayList.add(c6Var);
                    I15 = I15;
                    I4 = I4;
                    I17 = I17;
                    I5 = I5;
                    I3 = I3;
                    I18 = I18;
                    i7 = i7;
                    i9 = i9;
                    i4 = i4;
                    i8 = i8;
                    I = I;
                    i5 = i5;
                    I16 = I16;
                }
                a2.close();
                iVar.S();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a2.close();
                iVar.S();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            iVar = L;
            a2.close();
            iVar.S();
            throw th;
        }
    }

    public List<c6> f() {
        androidx.room.i iVar;
        Throwable th;
        androidx.room.i L = androidx.room.i.L("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            int I = androidx.core.app.b.I(a2, FacebookAdapter.KEY_ID);
            int I2 = androidx.core.app.b.I(a2, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE);
            int I3 = androidx.core.app.b.I(a2, "worker_class_name");
            int I4 = androidx.core.app.b.I(a2, "input_merger_class_name");
            int I5 = androidx.core.app.b.I(a2, "input");
            int I6 = androidx.core.app.b.I(a2, "output");
            int I7 = androidx.core.app.b.I(a2, "initial_delay");
            int I8 = androidx.core.app.b.I(a2, "interval_duration");
            int I9 = androidx.core.app.b.I(a2, "flex_duration");
            int I10 = androidx.core.app.b.I(a2, "run_attempt_count");
            int I11 = androidx.core.app.b.I(a2, "backoff_policy");
            int I12 = androidx.core.app.b.I(a2, "backoff_delay_duration");
            int I13 = androidx.core.app.b.I(a2, "period_start_time");
            int I14 = androidx.core.app.b.I(a2, "minimum_retention_duration");
            iVar = L;
            try {
                int I15 = androidx.core.app.b.I(a2, "schedule_requested_at");
                int I16 = androidx.core.app.b.I(a2, "required_network_type");
                int i2 = I14;
                int I17 = androidx.core.app.b.I(a2, "requires_charging");
                int i3 = I13;
                int I18 = androidx.core.app.b.I(a2, "requires_device_idle");
                int i4 = I12;
                int I19 = androidx.core.app.b.I(a2, "requires_battery_not_low");
                int i5 = I11;
                int I20 = androidx.core.app.b.I(a2, "requires_storage_not_low");
                int i6 = I10;
                int I21 = androidx.core.app.b.I(a2, "trigger_content_update_delay");
                int i7 = I9;
                int I22 = androidx.core.app.b.I(a2, "trigger_max_content_delay");
                int i8 = I8;
                int I23 = androidx.core.app.b.I(a2, "content_uri_triggers");
                int i9 = I7;
                int i10 = I6;
                ArrayList arrayList = new ArrayList(a2.getCount());
                while (a2.moveToNext()) {
                    String string = a2.getString(I);
                    String string2 = a2.getString(I3);
                    androidx.work.c cVar = new androidx.work.c();
                    cVar.k(i6.c(a2.getInt(I16)));
                    cVar.m(a2.getInt(I17) != 0);
                    cVar.n(a2.getInt(I18) != 0);
                    cVar.l(a2.getInt(I19) != 0);
                    cVar.o(a2.getInt(I20) != 0);
                    cVar.p(a2.getLong(I21));
                    cVar.q(a2.getLong(I22));
                    cVar.j(i6.a(a2.getBlob(I23)));
                    c6 c6Var = new c6(string, string2);
                    c6Var.b = i6.d(a2.getInt(I2));
                    c6Var.d = a2.getString(I4);
                    c6Var.e = androidx.work.e.a(a2.getBlob(I5));
                    c6Var.f = androidx.work.e.a(a2.getBlob(i10));
                    c6Var.g = a2.getLong(i9);
                    c6Var.h = a2.getLong(i8);
                    c6Var.i = a2.getLong(i7);
                    c6Var.k = a2.getInt(i6);
                    i10 = i10;
                    c6Var.l = i6.b(a2.getInt(i5));
                    c6Var.m = a2.getLong(i4);
                    i6 = i6;
                    c6Var.n = a2.getLong(i3);
                    i3 = i3;
                    c6Var.o = a2.getLong(i2);
                    i2 = i2;
                    c6Var.p = a2.getLong(I15);
                    c6Var.j = cVar;
                    arrayList.add(c6Var);
                    I15 = I15;
                    I4 = I4;
                    I17 = I17;
                    I5 = I5;
                    I3 = I3;
                    I18 = I18;
                    i7 = i7;
                    i9 = i9;
                    i4 = i4;
                    i8 = i8;
                    I = I;
                    i5 = i5;
                    I16 = I16;
                }
                a2.close();
                iVar.S();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a2.close();
                iVar.S();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            iVar = L;
            a2.close();
            iVar.S();
            throw th;
        }
    }

    public m g(String str) {
        androidx.room.i L = androidx.room.i.L("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            return a2.moveToFirst() ? i6.d(a2.getInt(0)) : null;
        } finally {
            a2.close();
            L.S();
        }
    }

    public List<String> h(String str) {
        androidx.room.i L = androidx.room.i.L("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                arrayList.add(a2.getString(0));
            }
            return arrayList;
        } finally {
            a2.close();
            L.S();
        }
    }

    public List<String> i(String str) {
        androidx.room.i L = androidx.room.i.L("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                arrayList.add(a2.getString(0));
            }
            return arrayList;
        } finally {
            a2.close();
            L.S();
        }
    }

    public c6 j(String str) {
        androidx.room.i iVar;
        Throwable th;
        c6 c6Var;
        androidx.room.i L = androidx.room.i.L("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            int I = androidx.core.app.b.I(a2, FacebookAdapter.KEY_ID);
            int I2 = androidx.core.app.b.I(a2, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE);
            int I3 = androidx.core.app.b.I(a2, "worker_class_name");
            int I4 = androidx.core.app.b.I(a2, "input_merger_class_name");
            int I5 = androidx.core.app.b.I(a2, "input");
            int I6 = androidx.core.app.b.I(a2, "output");
            int I7 = androidx.core.app.b.I(a2, "initial_delay");
            int I8 = androidx.core.app.b.I(a2, "interval_duration");
            int I9 = androidx.core.app.b.I(a2, "flex_duration");
            int I10 = androidx.core.app.b.I(a2, "run_attempt_count");
            int I11 = androidx.core.app.b.I(a2, "backoff_policy");
            int I12 = androidx.core.app.b.I(a2, "backoff_delay_duration");
            int I13 = androidx.core.app.b.I(a2, "period_start_time");
            int I14 = androidx.core.app.b.I(a2, "minimum_retention_duration");
            iVar = L;
            try {
                int I15 = androidx.core.app.b.I(a2, "schedule_requested_at");
                int I16 = androidx.core.app.b.I(a2, "required_network_type");
                int I17 = androidx.core.app.b.I(a2, "requires_charging");
                int I18 = androidx.core.app.b.I(a2, "requires_device_idle");
                int I19 = androidx.core.app.b.I(a2, "requires_battery_not_low");
                int I20 = androidx.core.app.b.I(a2, "requires_storage_not_low");
                int I21 = androidx.core.app.b.I(a2, "trigger_content_update_delay");
                int I22 = androidx.core.app.b.I(a2, "trigger_max_content_delay");
                int I23 = androidx.core.app.b.I(a2, "content_uri_triggers");
                if (a2.moveToFirst()) {
                    String string = a2.getString(I);
                    String string2 = a2.getString(I3);
                    androidx.work.c cVar = new androidx.work.c();
                    cVar.k(i6.c(a2.getInt(I16)));
                    cVar.m(a2.getInt(I17) != 0);
                    cVar.n(a2.getInt(I18) != 0);
                    cVar.l(a2.getInt(I19) != 0);
                    cVar.o(a2.getInt(I20) != 0);
                    cVar.p(a2.getLong(I21));
                    cVar.q(a2.getLong(I22));
                    cVar.j(i6.a(a2.getBlob(I23)));
                    c6Var = new c6(string, string2);
                    c6Var.b = i6.d(a2.getInt(I2));
                    c6Var.d = a2.getString(I4);
                    c6Var.e = androidx.work.e.a(a2.getBlob(I5));
                    c6Var.f = androidx.work.e.a(a2.getBlob(I6));
                    c6Var.g = a2.getLong(I7);
                    c6Var.h = a2.getLong(I8);
                    c6Var.i = a2.getLong(I9);
                    c6Var.k = a2.getInt(I10);
                    c6Var.l = i6.b(a2.getInt(I11));
                    c6Var.m = a2.getLong(I12);
                    c6Var.n = a2.getLong(I13);
                    c6Var.o = a2.getLong(I14);
                    c6Var.p = a2.getLong(I15);
                    c6Var.j = cVar;
                } else {
                    c6Var = null;
                }
                a2.close();
                iVar.S();
                return c6Var;
            } catch (Throwable th2) {
                th = th2;
                a2.close();
                iVar.S();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            iVar = L;
            a2.close();
            iVar.S();
            throw th;
        }
    }

    public List<c6.a> k(String str) {
        androidx.room.i L = androidx.room.i.L("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            int I = androidx.core.app.b.I(a2, FacebookAdapter.KEY_ID);
            int I2 = androidx.core.app.b.I(a2, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE);
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                c6.a aVar = new c6.a();
                aVar.a = a2.getString(I);
                aVar.b = i6.d(a2.getInt(I2));
                arrayList.add(aVar);
            }
            return arrayList;
        } finally {
            a2.close();
            L.S();
        }
    }

    public int l(String str) {
        this.a.b();
        l4 a2 = this.f.a();
        if (str == null) {
            a2.N(1);
        } else {
            a2.g(1, str);
        }
        this.a.c();
        try {
            int k = a2.k();
            this.a.o();
            return k;
        } finally {
            this.a.g();
            this.f.c(a2);
        }
    }

    public void m(c6 c6Var) {
        this.a.b();
        this.a.c();
        try {
            this.b.e(c6Var);
            this.a.o();
        } finally {
            this.a.g();
        }
    }

    public int n(String str, long j) {
        this.a.b();
        l4 a2 = this.h.a();
        a2.z(1, j);
        if (str == null) {
            a2.N(2);
        } else {
            a2.g(2, str);
        }
        this.a.c();
        try {
            int k = a2.k();
            this.a.o();
            return k;
        } finally {
            this.a.g();
            this.h.c(a2);
        }
    }

    public int o() {
        this.a.b();
        l4 a2 = this.i.a();
        this.a.c();
        try {
            int k = a2.k();
            this.a.o();
            return k;
        } finally {
            this.a.g();
            this.i.c(a2);
        }
    }

    public int p(String str) {
        this.a.b();
        l4 a2 = this.g.a();
        if (str == null) {
            a2.N(1);
        } else {
            a2.g(1, str);
        }
        this.a.c();
        try {
            int k = a2.k();
            this.a.o();
            return k;
        } finally {
            this.a.g();
            this.g.c(a2);
        }
    }

    public void q(String str, androidx.work.e eVar) {
        this.a.b();
        l4 a2 = this.d.a();
        byte[] c2 = androidx.work.e.c(eVar);
        if (c2 == null) {
            a2.N(1);
        } else {
            a2.B(1, c2);
        }
        if (str == null) {
            a2.N(2);
        } else {
            a2.g(2, str);
        }
        this.a.c();
        try {
            a2.k();
            this.a.o();
        } finally {
            this.a.g();
            this.d.c(a2);
        }
    }

    public void r(String str, long j) {
        this.a.b();
        l4 a2 = this.e.a();
        a2.z(1, j);
        if (str == null) {
            a2.N(2);
        } else {
            a2.g(2, str);
        }
        this.a.c();
        try {
            a2.k();
            this.a.o();
        } finally {
            this.a.g();
            this.e.c(a2);
        }
    }

    public int s(m mVar, String... strArr) {
        this.a.b();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE workspec SET state=");
        sb.append("?");
        sb.append(" WHERE id IN (");
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append("?");
            if (i2 < length - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        l4 d2 = this.a.d(sb.toString());
        d2.z(1, (long) i6.e(mVar));
        int i3 = 2;
        for (String str : strArr) {
            if (str == null) {
                d2.N(i3);
            } else {
                d2.g(i3, str);
            }
            i3++;
        }
        this.a.c();
        try {
            int k = d2.k();
            this.a.o();
            return k;
        } finally {
            this.a.g();
        }
    }
}
