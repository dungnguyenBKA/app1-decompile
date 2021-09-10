package defpackage;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.internal.k5;
import java.util.List;
import java.util.Map;

/* renamed from: cw  reason: default package */
public class cw {
    private final zzbr a;

    /* renamed from: cw$a */
    public interface a extends k5 {
    }

    public cw(zzbr zzbr) {
        this.a = zzbr;
    }

    public void a(@RecentlyNonNull String str) {
        this.a.zzu(str);
    }

    public void b(@RecentlyNonNull String str, String str2, Bundle bundle) {
        this.a.zzl(str, str2, bundle);
    }

    public void c(@RecentlyNonNull String str) {
        this.a.zzv(str);
    }

    public long d() {
        return this.a.zzy();
    }

    @RecentlyNonNull
    public String e() {
        return this.a.zzG();
    }

    @RecentlyNullable
    public String f() {
        return this.a.zzx();
    }

    @RecentlyNonNull
    public List<Bundle> g(String str, String str2) {
        return this.a.zzm(str, str2);
    }

    @RecentlyNullable
    public String h() {
        return this.a.zzA();
    }

    @RecentlyNullable
    public String i() {
        return this.a.zzz();
    }

    @RecentlyNullable
    public String j() {
        return this.a.zzw();
    }

    public int k(@RecentlyNonNull String str) {
        return this.a.zzE(str);
    }

    @RecentlyNonNull
    public Map<String, Object> l(String str, String str2, boolean z) {
        return this.a.zzB(str, str2, z);
    }

    public void m(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        this.a.zzh(str, str2, bundle);
    }

    public void n(@RecentlyNonNull Bundle bundle) {
        this.a.zzD(bundle, false);
    }

    @RecentlyNonNull
    public Bundle o(@RecentlyNonNull Bundle bundle) {
        return this.a.zzD(bundle, true);
    }

    public void p(@RecentlyNonNull a aVar) {
        this.a.zze(aVar);
    }

    public void q(@RecentlyNonNull Bundle bundle) {
        this.a.zzk(bundle);
    }

    public void r(@RecentlyNonNull Bundle bundle) {
        this.a.zzq(bundle);
    }

    public void s(@RecentlyNonNull Activity activity, String str, String str2) {
        this.a.zzo(activity, str, str2);
    }

    public void t(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Object obj) {
        this.a.zzj(str, str2, obj, true);
    }
}
