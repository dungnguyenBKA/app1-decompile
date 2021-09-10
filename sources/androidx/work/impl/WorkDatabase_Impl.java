package androidx.work.impl;

import android.database.Cursor;
import androidx.room.e;
import androidx.room.g;
import androidx.room.h;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.vungle.warren.model.AdvertisementDBAdapter;
import defpackage.f4;
import defpackage.i4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

public final class WorkDatabase_Impl extends WorkDatabase {
    private volatile d6 l;
    private volatile u5 m;
    private volatile g6 n;
    private volatile x5 o;
    private volatile a6 p;

    class a extends h.a {
        a(int i) {
            super(i);
        }

        @Override // androidx.room.h.a
        public void a(h4 h4Var) {
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            h4Var.execSQL("CREATE  INDEX `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            h4Var.execSQL("CREATE  INDEX `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            h4Var.execSQL("CREATE  INDEX `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            h4Var.execSQL("CREATE  INDEX `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            h4Var.execSQL("CREATE  INDEX `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            h4Var.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            h4Var.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c84d23ade98552f1cec71088c1f0794c')");
        }

        @Override // androidx.room.h.a
        public void b(h4 h4Var) {
            h4Var.execSQL("DROP TABLE IF EXISTS `Dependency`");
            h4Var.execSQL("DROP TABLE IF EXISTS `WorkSpec`");
            h4Var.execSQL("DROP TABLE IF EXISTS `WorkTag`");
            h4Var.execSQL("DROP TABLE IF EXISTS `SystemIdInfo`");
            h4Var.execSQL("DROP TABLE IF EXISTS `WorkName`");
        }

        /* access modifiers changed from: protected */
        @Override // androidx.room.h.a
        public void c(h4 h4Var) {
            if (((g) WorkDatabase_Impl.this).g != null) {
                int size = ((g) WorkDatabase_Impl.this).g.size();
                for (int i = 0; i < size; i++) {
                    Objects.requireNonNull((g.b) ((g) WorkDatabase_Impl.this).g.get(i));
                }
            }
        }

        @Override // androidx.room.h.a
        public void d(h4 h4Var) {
            ((g) WorkDatabase_Impl.this).a = h4Var;
            h4Var.execSQL("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.m(h4Var);
            if (((g) WorkDatabase_Impl.this).g != null) {
                int size = ((g) WorkDatabase_Impl.this).g.size();
                for (int i = 0; i < size; i++) {
                    ((g.b) ((g) WorkDatabase_Impl.this).g.get(i)).a(h4Var);
                }
            }
        }

        @Override // androidx.room.h.a
        public void e(h4 h4Var) {
        }

        /* JADX INFO: finally extract failed */
        @Override // androidx.room.h.a
        public void f(h4 h4Var) {
            ArrayList arrayList = new ArrayList();
            Cursor D = h4Var.D("SELECT name FROM sqlite_master WHERE type = 'trigger'");
            while (D.moveToNext()) {
                try {
                    arrayList.add(D.getString(0));
                } catch (Throwable th) {
                    D.close();
                    throw th;
                }
            }
            D.close();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str.startsWith("room_fts_content_sync_")) {
                    h4Var.execSQL("DROP TRIGGER IF EXISTS " + str);
                }
            }
        }

        /* access modifiers changed from: protected */
        @Override // androidx.room.h.a
        public void g(h4 h4Var) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("work_spec_id", new f4.a("work_spec_id", "TEXT", true, 1));
            hashMap.put("prerequisite_id", new f4.a("prerequisite_id", "TEXT", true, 2));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new f4.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            hashSet.add(new f4.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new f4.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
            hashSet2.add(new f4.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
            f4 f4Var = new f4("Dependency", hashMap, hashSet, hashSet2);
            f4 a = f4.a(h4Var, "Dependency");
            if (f4Var.equals(a)) {
                HashMap hashMap2 = new HashMap(23);
                hashMap2.put(FacebookAdapter.KEY_ID, new f4.a(FacebookAdapter.KEY_ID, "TEXT", true, 1));
                hashMap2.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE, new f4.a(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE, "INTEGER", true, 0));
                hashMap2.put("worker_class_name", new f4.a("worker_class_name", "TEXT", true, 0));
                hashMap2.put("input_merger_class_name", new f4.a("input_merger_class_name", "TEXT", false, 0));
                hashMap2.put("input", new f4.a("input", "BLOB", true, 0));
                hashMap2.put("output", new f4.a("output", "BLOB", true, 0));
                hashMap2.put("initial_delay", new f4.a("initial_delay", "INTEGER", true, 0));
                hashMap2.put("interval_duration", new f4.a("interval_duration", "INTEGER", true, 0));
                hashMap2.put("flex_duration", new f4.a("flex_duration", "INTEGER", true, 0));
                hashMap2.put("run_attempt_count", new f4.a("run_attempt_count", "INTEGER", true, 0));
                hashMap2.put("backoff_policy", new f4.a("backoff_policy", "INTEGER", true, 0));
                hashMap2.put("backoff_delay_duration", new f4.a("backoff_delay_duration", "INTEGER", true, 0));
                hashMap2.put("period_start_time", new f4.a("period_start_time", "INTEGER", true, 0));
                hashMap2.put("minimum_retention_duration", new f4.a("minimum_retention_duration", "INTEGER", true, 0));
                hashMap2.put("schedule_requested_at", new f4.a("schedule_requested_at", "INTEGER", true, 0));
                hashMap2.put("required_network_type", new f4.a("required_network_type", "INTEGER", false, 0));
                hashMap2.put("requires_charging", new f4.a("requires_charging", "INTEGER", true, 0));
                hashMap2.put("requires_device_idle", new f4.a("requires_device_idle", "INTEGER", true, 0));
                hashMap2.put("requires_battery_not_low", new f4.a("requires_battery_not_low", "INTEGER", true, 0));
                hashMap2.put("requires_storage_not_low", new f4.a("requires_storage_not_low", "INTEGER", true, 0));
                hashMap2.put("trigger_content_update_delay", new f4.a("trigger_content_update_delay", "INTEGER", true, 0));
                hashMap2.put("trigger_max_content_delay", new f4.a("trigger_max_content_delay", "INTEGER", true, 0));
                hashMap2.put("content_uri_triggers", new f4.a("content_uri_triggers", "BLOB", false, 0));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(1);
                hashSet4.add(new f4.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
                f4 f4Var2 = new f4("WorkSpec", hashMap2, hashSet3, hashSet4);
                f4 a2 = f4.a(h4Var, "WorkSpec");
                if (f4Var2.equals(a2)) {
                    HashMap hashMap3 = new HashMap(2);
                    hashMap3.put("tag", new f4.a("tag", "TEXT", true, 1));
                    hashMap3.put("work_spec_id", new f4.a("work_spec_id", "TEXT", true, 2));
                    HashSet hashSet5 = new HashSet(1);
                    hashSet5.add(new f4.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
                    HashSet hashSet6 = new HashSet(1);
                    hashSet6.add(new f4.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
                    f4 f4Var3 = new f4("WorkTag", hashMap3, hashSet5, hashSet6);
                    f4 a3 = f4.a(h4Var, "WorkTag");
                    if (f4Var3.equals(a3)) {
                        HashMap hashMap4 = new HashMap(2);
                        hashMap4.put("work_spec_id", new f4.a("work_spec_id", "TEXT", true, 1));
                        hashMap4.put("system_id", new f4.a("system_id", "INTEGER", true, 0));
                        HashSet hashSet7 = new HashSet(1);
                        hashSet7.add(new f4.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
                        f4 f4Var4 = new f4("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
                        f4 a4 = f4.a(h4Var, "SystemIdInfo");
                        if (f4Var4.equals(a4)) {
                            HashMap hashMap5 = new HashMap(2);
                            hashMap5.put("name", new f4.a("name", "TEXT", true, 1));
                            hashMap5.put("work_spec_id", new f4.a("work_spec_id", "TEXT", true, 2));
                            HashSet hashSet8 = new HashSet(1);
                            hashSet8.add(new f4.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
                            HashSet hashSet9 = new HashSet(1);
                            hashSet9.add(new f4.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
                            f4 f4Var5 = new f4("WorkName", hashMap5, hashSet8, hashSet9);
                            f4 a5 = f4.a(h4Var, "WorkName");
                            if (!f4Var5.equals(a5)) {
                                throw new IllegalStateException("Migration didn't properly handle WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + f4Var5 + "\n Found:\n" + a5);
                            }
                            return;
                        }
                        throw new IllegalStateException("Migration didn't properly handle SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + f4Var4 + "\n Found:\n" + a4);
                    }
                    throw new IllegalStateException("Migration didn't properly handle WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + f4Var3 + "\n Found:\n" + a3);
                }
                throw new IllegalStateException("Migration didn't properly handle WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + f4Var2 + "\n Found:\n" + a2);
            }
            throw new IllegalStateException("Migration didn't properly handle Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + f4Var + "\n Found:\n" + a);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.room.g
    public e e() {
        return new e(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName");
    }

    /* access modifiers changed from: protected */
    @Override // androidx.room.g
    public i4 f(androidx.room.a aVar) {
        h hVar = new h(aVar, new a(6), "c84d23ade98552f1cec71088c1f0794c", "1db8206f0da6aa81bbdd2d99a82d9e14");
        i4.b.a a2 = i4.b.a(aVar.b);
        a2.c(aVar.c);
        a2.b(hVar);
        return ((o4) aVar.a).a(a2.a());
    }

    @Override // androidx.work.impl.WorkDatabase
    public u5 p() {
        u5 u5Var;
        if (this.m != null) {
            return this.m;
        }
        synchronized (this) {
            if (this.m == null) {
                this.m = new v5(this);
            }
            u5Var = this.m;
        }
        return u5Var;
    }

    @Override // androidx.work.impl.WorkDatabase
    public x5 r() {
        x5 x5Var;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new y5(this);
            }
            x5Var = this.o;
        }
        return x5Var;
    }

    @Override // androidx.work.impl.WorkDatabase
    public a6 s() {
        a6 a6Var;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new b6(this);
            }
            a6Var = this.p;
        }
        return a6Var;
    }

    @Override // androidx.work.impl.WorkDatabase
    public d6 t() {
        d6 d6Var;
        if (this.l != null) {
            return this.l;
        }
        synchronized (this) {
            if (this.l == null) {
                this.l = new e6(this);
            }
            d6Var = this.l;
        }
        return d6Var;
    }

    @Override // androidx.work.impl.WorkDatabase
    public g6 u() {
        g6 g6Var;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new h6(this);
            }
            g6Var = this.n;
        }
        return g6Var;
    }
}
