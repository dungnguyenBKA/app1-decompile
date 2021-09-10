package com.google.android.gms.tagmanager;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataLayer {
    @RecentlyNonNull
    public static final Object OBJECT_NOT_PRESENT = new Object();
    static final String[] zza = "gtm.lifetime".split("\\.");
    private static final Pattern zzb = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<zzav, Integer> zzc = new ConcurrentHashMap<>();
    private final Map<String, Object> zzd = new HashMap();
    private final ReentrantLock zze = new ReentrantLock();
    private final LinkedList<Map<String, Object>> zzf = new LinkedList<>();
    private final zzax zzg;
    private final CountDownLatch zzh = new CountDownLatch(1);

    DataLayer(zzax zzax) {
        this.zzg = zzax;
        ((zzbe) zzax).zzb(new zzat(this));
    }

    static void zzc(DataLayer dataLayer, Map map) {
        Long l;
        long j;
        dataLayer.zze.lock();
        try {
            dataLayer.zzf.offer(map);
            if (dataLayer.zze.getHoldCount() == 1) {
                int i = 0;
                do {
                    Map<String, Object> poll = dataLayer.zzf.poll();
                    if (poll != null) {
                        synchronized (dataLayer.zzd) {
                            for (String str : poll.keySet()) {
                                dataLayer.zzf(dataLayer.zza(str, poll.get(str)), dataLayer.zzd);
                            }
                        }
                        for (zzav zzav : dataLayer.zzc.keySet()) {
                            zzav.zza(poll);
                        }
                        i++;
                    }
                } while (i <= 500);
                dataLayer.zzf.clear();
                throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
            }
            String[] strArr = zza;
            int length = strArr.length;
            Object obj = map;
            int i2 = 0;
            while (true) {
                l = null;
                if (i2 >= length) {
                    break;
                }
                String str2 = strArr[i2];
                if (!(obj instanceof Map)) {
                    obj = null;
                    break;
                } else {
                    obj = ((Map) obj).get(str2);
                    i2++;
                }
            }
            if (obj != null) {
                String obj2 = obj.toString();
                Matcher matcher = zzb.matcher(obj2);
                if (!matcher.matches()) {
                    String valueOf = String.valueOf(obj2);
                    if (valueOf.length() != 0) {
                        "unknown _lifetime: ".concat(valueOf);
                    } else {
                        new String("unknown _lifetime: ");
                    }
                } else {
                    try {
                        String group = matcher.group(1);
                        Objects.requireNonNull(group, "null reference");
                        j = Long.parseLong(group);
                    } catch (NumberFormatException unused) {
                        String valueOf2 = String.valueOf(obj2);
                        Log.w("GoogleTagManager", valueOf2.length() != 0 ? "illegal number in _lifetime value: ".concat(valueOf2) : new String("illegal number in _lifetime value: "));
                        j = 0;
                    }
                    if (j <= 0) {
                        String valueOf3 = String.valueOf(obj2);
                        if (valueOf3.length() != 0) {
                            "non-positive _lifetime: ".concat(valueOf3);
                        } else {
                            new String("non-positive _lifetime: ");
                        }
                    } else {
                        String group2 = matcher.group(2);
                        Objects.requireNonNull(group2, "null reference");
                        if (group2.length() == 0) {
                            l = Long.valueOf(j);
                        } else {
                            char charAt = group2.charAt(0);
                            if (charAt == 'd') {
                                l = Long.valueOf(j * 86400000);
                            } else if (charAt == 'h') {
                                l = Long.valueOf(j * 3600000);
                            } else if (charAt == 'm') {
                                l = Long.valueOf(j * 60000);
                            } else if (charAt != 's') {
                                String valueOf4 = String.valueOf(obj2);
                                Log.w("GoogleTagManager", valueOf4.length() != 0 ? "unknown units in _lifetime: ".concat(valueOf4) : new String("unknown units in _lifetime: "));
                            } else {
                                l = Long.valueOf(j * 1000);
                            }
                        }
                    }
                }
            }
            if (l != null) {
                ArrayList arrayList = new ArrayList();
                dataLayer.zzh(map, "", arrayList);
                ((zzbe) dataLayer.zzg).zzc(arrayList, l.longValue());
            }
        } finally {
            dataLayer.zze.unlock();
        }
    }

    private final void zzh(Map<String, Object> map, String str, Collection<zzau> collection) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String str2 = str.length() == 0 ? "" : ".";
            String key = entry.getKey();
            String n = ic.n(new StringBuilder(str.length() + str2.length() + String.valueOf(key).length()), str, str2, key);
            if (entry.getValue() instanceof Map) {
                zzh((Map) entry.getValue(), n, collection);
            } else if (!n.equals("gtm.lifetime")) {
                collection.add(new zzau(n, entry.getValue()));
            }
        }
    }

    @RecentlyNonNull
    public String toString() {
        String sb;
        synchronized (this.zzd) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, Object> entry : this.zzd.entrySet()) {
                sb2.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", entry.getKey(), entry.getValue()));
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* access modifiers changed from: package-private */
    public final Map<String, Object> zza(String str, Object obj) {
        HashMap hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        HashMap hashMap2 = hashMap;
        while (true) {
            int length = split.length - 1;
            if (i < length) {
                HashMap hashMap3 = new HashMap();
                hashMap2.put(split[i], hashMap3);
                i++;
                hashMap2 = hashMap3;
            } else {
                hashMap2.put(split[length], obj);
                return hashMap;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zze(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof List) {
                if (!(list2.get(i) instanceof List)) {
                    list2.set(i, new ArrayList());
                }
                Object obj2 = list2.get(i);
                Objects.requireNonNull(obj2, "null reference");
                zze((List) obj, (List) obj2);
            } else if (obj instanceof Map) {
                if (!(list2.get(i) instanceof Map)) {
                    list2.set(i, new HashMap());
                }
                Object obj3 = list2.get(i);
                Objects.requireNonNull(obj3, "null reference");
                zzf((Map) obj, (Map) obj3);
            } else if (obj != OBJECT_NOT_PRESENT) {
                list2.set(i, obj);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzf(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                Object obj2 = map2.get(str);
                Objects.requireNonNull(obj2, "null reference");
                zze((List) obj, (List) obj2);
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                Object obj3 = map2.get(str);
                Objects.requireNonNull(obj3, "null reference");
                zzf((Map) obj, (Map) obj3);
            } else {
                map2.put(str, obj);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzg(zzav zzav) {
        this.zzc.put(zzav, 0);
    }
}
