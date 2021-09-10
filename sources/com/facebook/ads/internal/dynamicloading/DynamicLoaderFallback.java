package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* access modifiers changed from: package-private */
@Keep
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* access modifiers changed from: package-private */
    public class a implements InvocationHandler {
        final /* synthetic */ List a;
        final /* synthetic */ Map b;
        final /* synthetic */ List c;
        final /* synthetic */ List d;
        final /* synthetic */ Map e;
        final /* synthetic */ List f;
        final /* synthetic */ List g;
        final /* synthetic */ Method h;
        final /* synthetic */ Method i;

        a(List list, Map map, List list2, List list3, Map map2, List list4, List list5, Method method, Method method2) {
            this.a = list;
            this.b = map;
            this.c = list2;
            this.d = list3;
            this.e = map2;
            this.f = list4;
            this.g = list5;
            this.h = method;
            this.i = method2;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            if (method.getReturnType().isPrimitive()) {
                if (!method.getReturnType().equals(Void.TYPE)) {
                    return Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                }
                Iterator it = this.a.iterator();
                while (it.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it.next()) || !DynamicLoaderFallback.reportError(obj, this.b))) {
                }
                for (Method method2 : this.c) {
                    if (DynamicLoaderFallback.equalsMethods(method, method2) && DynamicLoaderFallback.reportError(obj, this.b)) {
                        return null;
                    }
                }
                return null;
            } else if (method.getReturnType().equals(String.class)) {
                return "";
            } else {
                if (method.getReturnType().equals(obj.getClass().getInterfaces()[0])) {
                    obj2 = obj;
                } else {
                    obj2 = Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                }
                Iterator it2 = this.d.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (DynamicLoaderFallback.equalsMethods(method, (Method) it2.next())) {
                            DynamicLoaderFallback.sApiProxyToAdListenersMap.put(this.e.get(obj), (AdListener) objArr[0]);
                            break;
                        }
                    } else {
                        break;
                    }
                }
                for (Method method3 : this.f) {
                    if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                        this.e.put(obj2, obj);
                    }
                }
                for (Method method4 : this.g) {
                    if (DynamicLoaderFallback.equalsMethods(method, method4)) {
                        for (Object obj3 : objArr) {
                            if (obj3 instanceof Ad) {
                                this.b.put(obj2, (Ad) obj3);
                            }
                        }
                    }
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.h)) {
                    this.b.put(objArr[1], (Ad) objArr[0]);
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.i)) {
                    this.b.put(objArr[1], (Ad) objArr[0]);
                }
                return obj2;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements Runnable {
        final /* synthetic */ AdListener b;
        final /* synthetic */ Ad c;

        b(AdListener adListener, Ad ad) {
            this.b = adListener;
            this.c = ad;
        }

        public void run() {
            this.b.onError(this.c, new AdError(-1, "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder."));
        }
    }

    /* access modifiers changed from: private */
    public static class c {
        private Method a;
        private final InvocationHandler b = new a();

        class a implements InvocationHandler {
            a() {
            }

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if ("toString".equals(method.getName())) {
                    return null;
                }
                c.this.a = method;
                return null;
            }
        }

        c(a aVar) {
        }

        /* access modifiers changed from: package-private */
        public Method b() {
            return this.a;
        }

        public <T> T c(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.b));
        }
    }

    DynamicLoaderFallback() {
    }

    private static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    /* access modifiers changed from: private */
    public static boolean equalsMethods(Method method, Method method2) {
        return method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2);
    }

    @SuppressLint({"Parameter Not Nullable", "CatchGeneralException"})
    static DynamicLoader makeFallbackLoader() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        c cVar = new c(null);
        DynamicLoader dynamicLoader = (DynamicLoader) cVar.c(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(cVar.b());
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(cVar.b());
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(cVar.b());
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception unused) {
        }
        arrayList5.add(cVar.b());
        dynamicLoader.createNativeAdApi(null, null);
        Method b2 = cVar.b();
        dynamicLoader.createNativeBannerAdApi(null, null);
        Method b3 = cVar.b();
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) cVar.c(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(cVar.b());
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(cVar.b());
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(cVar.b());
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) cVar.c(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(cVar.b());
        interstitialAdApi.loadAd(null);
        arrayList2.add(cVar.b());
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(cVar.b());
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) cVar.c(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(cVar.b());
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(cVar.b());
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(cVar.b());
        AdViewApi adViewApi = (AdViewApi) cVar.c(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(cVar.b());
        adViewApi.loadAd(null);
        arrayList2.add(cVar.b());
        adViewApi.buildLoadAdConfig();
        arrayList4.add(cVar.b());
        ((AdView.AdViewLoadConfigBuilder) cVar.c(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(cVar.b());
        ((NativeAdBase.NativeAdLoadConfigBuilder) cVar.c(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(cVar.b());
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) cVar.c(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(cVar.b());
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) cVar.c(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(cVar.b());
        a aVar = new a(arrayList, hashMap, arrayList2, arrayList3, hashMap2, arrayList4, arrayList5, b2, b3);
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, aVar);
    }

    /* access modifiers changed from: private */
    public static boolean reportError(Object obj, Map<Object, Ad> map) {
        if (obj == null) {
            return false;
        }
        AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        Ad ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new b(adListener, ad), 500);
        return true;
    }
}
