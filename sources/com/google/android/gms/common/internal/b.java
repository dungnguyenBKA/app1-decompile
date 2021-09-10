package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

public abstract class b<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private static final Feature[] zzd = new Feature[0];
    final Handler zza;
    private ConnectionResult zzaa;
    private boolean zzab;
    private volatile zzc zzac;
    protected c zzb;
    protected AtomicInteger zzc;
    private int zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private long zzi;
    private volatile String zzj;
    private h0 zzk;
    private final Context zzl;
    private final Looper zzm;
    private final f zzn;
    private final com.google.android.gms.common.d zzo;
    private final Object zzp;
    private final Object zzq;
    @GuardedBy("mServiceBrokerLock")
    private k zzr;
    @GuardedBy("mLock")
    private T zzs;
    private final ArrayList<h<?>> zzt;
    @GuardedBy("mLock")
    private i zzu;
    @GuardedBy("mLock")
    private int zzv;
    private final a zzw;
    private final AbstractC0047b zzx;
    private final int zzy;
    private final String zzz;

    public interface a {
        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    /* renamed from: com.google.android.gms.common.internal.b$b  reason: collision with other inner class name */
    public interface AbstractC0047b {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface c {
        void a(ConnectionResult connectionResult);
    }

    /* access modifiers changed from: protected */
    public class d implements c {
        public d() {
        }

        @Override // com.google.android.gms.common.internal.b.c
        public void a(ConnectionResult connectionResult) {
            if (connectionResult.l0()) {
                b bVar = b.this;
                bVar.getRemoteService(null, bVar.getScopes());
            } else if (b.this.zzx != null) {
                b.this.zzx.onConnectionFailed(connectionResult);
            }
        }
    }

    public interface e {
        void a();
    }

    private abstract class f extends h<Boolean> {
        private final int d;
        private final Bundle e;

        protected f(int i, Bundle bundle) {
            super(Boolean.TRUE);
            this.d = i;
            this.e = bundle;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.b.h
        public final /* synthetic */ void a(Boolean bool) {
            int i = this.d;
            PendingIntent pendingIntent = null;
            if (i != 0) {
                if (i != 10) {
                    b.this.zza((b) 1, (int) null);
                    Bundle bundle = this.e;
                    if (bundle != null) {
                        pendingIntent = (PendingIntent) bundle.getParcelable(b.KEY_PENDING_INTENT);
                    }
                    f(new ConnectionResult(this.d, pendingIntent));
                    return;
                }
                b.this.zza((b) 1, (int) null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), b.this.getStartServiceAction(), b.this.getServiceDescriptor()));
            } else if (!g()) {
                b.this.zza((b) 1, (int) null);
                f(new ConnectionResult(8, null));
            }
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.b.h
        public final void b() {
        }

        /* access modifiers changed from: protected */
        public abstract void f(ConnectionResult connectionResult);

        /* access modifiers changed from: protected */
        public abstract boolean g();
    }

    final class g extends zzi {
        public g(Looper looper) {
            super(looper);
        }

        private static boolean a(Message message) {
            int i = message.what;
            return i == 2 || i == 1 || i == 7;
        }

        public final void handleMessage(Message message) {
            ConnectionResult connectionResult;
            ConnectionResult connectionResult2;
            if (b.this.zzc.get() == message.arg1) {
                int i = message.what;
                if ((i == 1 || i == 7 || ((i == 4 && !b.this.enableLocalFallback()) || message.what == 5)) && !b.this.isConnecting()) {
                    h hVar = (h) message.obj;
                    hVar.b();
                    hVar.d();
                    return;
                }
                int i2 = message.what;
                PendingIntent pendingIntent = null;
                if (i2 == 4) {
                    b.this.zzaa = new ConnectionResult(message.arg2);
                    if (!b.this.zzc() || b.this.zzab) {
                        if (b.this.zzaa != null) {
                            connectionResult2 = b.this.zzaa;
                        } else {
                            connectionResult2 = new ConnectionResult(8);
                        }
                        b.this.zzb.a(connectionResult2);
                        b.this.onConnectionFailed(connectionResult2);
                        return;
                    }
                    b.this.zza((b) 3, (int) null);
                } else if (i2 == 5) {
                    if (b.this.zzaa != null) {
                        connectionResult = b.this.zzaa;
                    } else {
                        connectionResult = new ConnectionResult(8);
                    }
                    b.this.zzb.a(connectionResult);
                    b.this.onConnectionFailed(connectionResult);
                } else if (i2 == 3) {
                    Object obj = message.obj;
                    if (obj instanceof PendingIntent) {
                        pendingIntent = (PendingIntent) obj;
                    }
                    ConnectionResult connectionResult3 = new ConnectionResult(message.arg2, pendingIntent);
                    b.this.zzb.a(connectionResult3);
                    b.this.onConnectionFailed(connectionResult3);
                } else if (i2 == 6) {
                    b.this.zza((b) 5, (int) null);
                    if (b.this.zzw != null) {
                        b.this.zzw.onConnectionSuspended(message.arg2);
                    }
                    b.this.onConnectionSuspended(message.arg2);
                    b.this.zza((b) 5, 1, (int) null);
                } else if (i2 == 2 && !b.this.isConnected()) {
                    h hVar2 = (h) message.obj;
                    hVar2.b();
                    hVar2.d();
                } else if (a(message)) {
                    ((h) message.obj).c();
                } else {
                    Log.wtf("GmsClient", ic.C(45, "Don't know how to handle message: ", message.what), new Exception());
                }
            } else if (a(message)) {
                h hVar3 = (h) message.obj;
                hVar3.b();
                hVar3.d();
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract class h<TListener> {
        private TListener a;
        private boolean b = false;

        public h(TListener tlistener) {
            this.a = tlistener;
        }

        /* access modifiers changed from: protected */
        public abstract void a(TListener tlistener);

        /* access modifiers changed from: protected */
        public abstract void b();

        public final void c() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.a;
                if (this.b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e) {
                    b();
                    throw e;
                }
            } else {
                b();
            }
            synchronized (this) {
                this.b = true;
            }
            d();
        }

        public final void d() {
            synchronized (this) {
                this.a = null;
            }
            synchronized (b.this.zzt) {
                b.this.zzt.remove(this);
            }
        }

        public final void e() {
            synchronized (this) {
                this.a = null;
            }
        }
    }

    public final class i implements ServiceConnection {
        private final int a;

        public i(int i) {
            this.a = i;
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            k kVar;
            if (iBinder == null) {
                b.this.zza((b) 16);
                return;
            }
            synchronized (b.this.zzq) {
                b bVar = b.this;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                if (queryLocalInterface == null || !(queryLocalInterface instanceof k)) {
                    kVar = new j(iBinder);
                } else {
                    kVar = (k) queryLocalInterface;
                }
                bVar.zzr = kVar;
            }
            b.this.zza(0, (Bundle) null, this.a);
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (b.this.zzq) {
                b.this.zzr = null;
            }
            Handler handler = b.this.zza;
            handler.sendMessage(handler.obtainMessage(6, this.a, 1));
        }
    }

    public static final class j extends i.a {
        private b b;
        private final int c;

        public j(b bVar, int i) {
            this.b = bVar;
            this.c = i;
        }

        public final void O(int i, IBinder iBinder, Bundle bundle) {
            n.i(this.b, "onPostInitComplete can be called only once per call to getRemoteService");
            this.b.onPostInitHandler(i, iBinder, bundle, this.c);
            this.b = null;
        }

        public final void P(int i, IBinder iBinder, zzc zzc) {
            n.i(this.b, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            Objects.requireNonNull(zzc, "null reference");
            this.b.zza((b) zzc);
            Bundle bundle = zzc.b;
            n.i(this.b, "onPostInitComplete can be called only once per call to getRemoteService");
            this.b.onPostInitHandler(i, iBinder, bundle, this.c);
            this.b = null;
        }
    }

    /* access modifiers changed from: protected */
    public final class k extends f {
        private final IBinder g;

        public k(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.g = iBinder;
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.b.f
        public final void f(ConnectionResult connectionResult) {
            if (b.this.zzx != null) {
                b.this.zzx.onConnectionFailed(connectionResult);
            }
            b.this.onConnectionFailed(connectionResult);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.b.f
        public final boolean g() {
            try {
                String interfaceDescriptor = this.g.getInterfaceDescriptor();
                if (!b.this.getServiceDescriptor().equals(interfaceDescriptor)) {
                    String serviceDescriptor = b.this.getServiceDescriptor();
                    StringBuilder sb = new StringBuilder(String.valueOf(interfaceDescriptor).length() + String.valueOf(serviceDescriptor).length() + 34);
                    sb.append("service descriptor mismatch: ");
                    sb.append(serviceDescriptor);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface createServiceInterface = b.this.createServiceInterface(this.g);
                if (createServiceInterface == null || (!b.this.zza((b) 2, 4, (int) createServiceInterface) && !b.this.zza((b) 3, 4, (int) createServiceInterface))) {
                    return false;
                }
                b.this.zzaa = null;
                Bundle connectionHint = b.this.getConnectionHint();
                if (b.this.zzw == null) {
                    return true;
                }
                b.this.zzw.onConnected(connectionHint);
                return true;
            } catch (RemoteException unused) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final class l extends f {
        public l(int i) {
            super(i, null);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.b.f
        public final void f(ConnectionResult connectionResult) {
            if (!b.this.enableLocalFallback() || !b.this.zzc()) {
                b.this.zzb.a(connectionResult);
                b.this.onConnectionFailed(connectionResult);
                return;
            }
            b.this.zza((b) 16);
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.b.f
        public final boolean g() {
            b.this.zzb.a(ConnectionResult.f);
            return true;
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected b(android.content.Context r10, android.os.Looper r11, int r12, com.google.android.gms.common.internal.b.a r13, com.google.android.gms.common.internal.b.AbstractC0047b r14, java.lang.String r15) {
        /*
            r9 = this;
            com.google.android.gms.common.internal.f r3 = com.google.android.gms.common.internal.f.a(r10)
            com.google.android.gms.common.d r4 = com.google.android.gms.common.d.c()
            java.lang.String r0 = "null reference"
            java.util.Objects.requireNonNull(r13, r0)
            java.util.Objects.requireNonNull(r14, r0)
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.b.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.b$a, com.google.android.gms.common.internal.b$b, java.lang.String):void");
    }

    private final String zza() {
        String str = this.zzz;
        return str == null ? this.zzl.getClass().getName() : str;
    }

    private final boolean zzb() {
        boolean z;
        synchronized (this.zzp) {
            z = this.zzv == 3;
        }
        return z;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final boolean zzc() {
        if (this.zzab || TextUtils.isEmpty(getServiceDescriptor()) || TextUtils.isEmpty(getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public void checkAvailabilityAndConnect() {
        int e2 = this.zzo.e(this.zzl, getMinApkVersion());
        if (e2 != 0) {
            zza(1, (IInterface) null);
            triggerNotAvailable(new d(), e2, null);
            return;
        }
        connect(new d());
    }

    /* access modifiers changed from: protected */
    public final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect(c cVar) {
        n.i(cVar, "Connection progress callbacks cannot be null.");
        this.zzb = cVar;
        zza(2, (IInterface) null);
    }

    /* access modifiers changed from: protected */
    public abstract T createServiceInterface(IBinder iBinder);

    public void disconnect(String str) {
        this.zzj = str;
        disconnect();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i2;
        T t;
        k kVar;
        synchronized (this.zzp) {
            i2 = this.zzv;
            t = this.zzs;
        }
        synchronized (this.zzq) {
            kVar = this.zzr;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i2 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i2 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i2 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i2 == 4) {
            printWriter.print("CONNECTED");
        } else if (i2 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (kVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(kVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzg > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j2 = this.zzg;
            String format = simpleDateFormat.format(new Date(this.zzg));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j2);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.zzf > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i3 = this.zze;
            if (i3 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i3 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i3 != 3) {
                printWriter.append((CharSequence) String.valueOf(i3));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j3 = this.zzf;
            String format2 = simpleDateFormat.format(new Date(this.zzf));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j3);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.zzi > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) androidx.core.app.b.Y(this.zzh));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j4 = this.zzi;
            String format3 = simpleDateFormat.format(new Date(this.zzi));
            StringBuilder sb3 = new StringBuilder(String.valueOf(format3).length() + 21);
            sb3.append(j4);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    /* access modifiers changed from: protected */
    public boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return zzd;
    }

    public final Feature[] getAvailableFeatures() {
        zzc zzc2 = this.zzac;
        if (zzc2 == null) {
            return null;
        }
        return zzc2.c;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.zzl;
    }

    public String getEndpointPackageName() {
        h0 h0Var;
        if (isConnected() && (h0Var = this.zzk) != null) {
            return h0Var.b();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    /* access modifiers changed from: protected */
    public Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzj;
    }

    /* access modifiers changed from: protected */
    public String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzm;
    }

    public int getMinApkVersion() {
        return com.google.android.gms.common.d.a;
    }

    public void getRemoteService(h hVar, Set<Scope> set) {
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.zzy);
        getServiceRequest.e = this.zzl.getPackageName();
        getServiceRequest.h = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.g = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (requiresSignIn()) {
            getServiceRequest.i = getAccount() != null ? getAccount() : new Account(DEFAULT_ACCOUNT, "com.google");
            if (hVar != null) {
                getServiceRequest.f = hVar.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.i = getAccount();
        }
        getServiceRequest.j = zzd;
        getServiceRequest.k = getApiFeatures();
        try {
            synchronized (this.zzq) {
                k kVar = this.zzr;
                if (kVar != null) {
                    kVar.i(new j(this, this.zzc.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            triggerConnectionSuspended(3);
        } catch (SecurityException e3) {
            throw e3;
        } catch (RemoteException | RuntimeException e4) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e4);
            onPostInitHandler(8, null, null, this.zzc.get());
        }
    }

    /* access modifiers changed from: protected */
    public Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    public final T getService() {
        T t;
        synchronized (this.zzp) {
            if (this.zzv != 5) {
                checkConnected();
                n.k(this.zzs != null, "Client is connected but service is null");
                t = this.zzs;
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzq) {
            k kVar = this.zzr;
            if (kVar == null) {
                return null;
            }
            return kVar.asBinder();
        }
    }

    /* access modifiers changed from: protected */
    public abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    /* access modifiers changed from: protected */
    public abstract String getStartServiceAction();

    /* access modifiers changed from: protected */
    public String getStartServicePackage() {
        return "com.google.android.gms";
    }

    /* access modifiers changed from: protected */
    public boolean getUseDynamicLookup() {
        return false;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzp) {
            z = this.zzv == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzp) {
            int i2 = this.zzv;
            if (i2 != 2) {
                if (i2 != 3) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public void onConnectedLocked(T t) {
        this.zzg = System.currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzh = connectionResult.o();
        this.zzi = System.currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    public void onConnectionSuspended(int i2) {
        this.zze = i2;
        this.zzf = System.currentTimeMillis();
    }

    /* access modifiers changed from: protected */
    public void onPostInitHandler(int i2, IBinder iBinder, Bundle bundle, int i3) {
        Handler handler = this.zza;
        handler.sendMessage(handler.obtainMessage(1, i3, -1, new k(i2, iBinder, bundle)));
    }

    /* access modifiers changed from: package-private */
    public void onSetConnectState(int i2, T t) {
    }

    public void onUserSignOut(e eVar) {
        eVar.a();
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void triggerConnectionSuspended(int i2) {
        Handler handler = this.zza;
        handler.sendMessage(handler.obtainMessage(6, this.zzc.get(), i2));
    }

    /* access modifiers changed from: protected */
    public void triggerNotAvailable(c cVar, int i2, PendingIntent pendingIntent) {
        n.i(cVar, "Connection progress callbacks cannot be null.");
        this.zzb = cVar;
        Handler handler = this.zza;
        handler.sendMessage(handler.obtainMessage(3, this.zzc.get(), i2, pendingIntent));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(zzc zzc2) {
        this.zzac = zzc2;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(int i2, T t) {
        h0 h0Var;
        h0 h0Var2;
        boolean z = false;
        if ((i2 == 4) == (t != null)) {
            z = true;
        }
        n.a(z);
        synchronized (this.zzp) {
            this.zzv = i2;
            this.zzs = t;
            onSetConnectState(i2, t);
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (!(this.zzu == null || (h0Var2 = this.zzk) == null)) {
                        String a2 = h0Var2.a();
                        String b = this.zzk.b();
                        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 70 + String.valueOf(b).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(a2);
                        sb.append(" on ");
                        sb.append(b);
                        Log.e("GmsClient", sb.toString());
                        f fVar = this.zzn;
                        String a3 = this.zzk.a();
                        String b2 = this.zzk.b();
                        int c2 = this.zzk.c();
                        i iVar = this.zzu;
                        String zza2 = zza();
                        boolean d2 = this.zzk.d();
                        Objects.requireNonNull(fVar);
                        fVar.c(new f.a(a3, b2, c2, d2), iVar, zza2);
                        this.zzc.incrementAndGet();
                    }
                    this.zzu = new i(this.zzc.get());
                    if (this.zzv != 3 || getLocalStartServiceAction() == null) {
                        String startServicePackage = getStartServicePackage();
                        String startServiceAction = getStartServiceAction();
                        int i3 = f.c;
                        h0Var = new h0(startServicePackage, startServiceAction, false, 129, getUseDynamicLookup());
                    } else {
                        String packageName = getContext().getPackageName();
                        String localStartServiceAction = getLocalStartServiceAction();
                        int i4 = f.c;
                        h0Var = new h0(packageName, localStartServiceAction, true, 129, false);
                    }
                    this.zzk = h0Var;
                    if (!h0Var.d() || getMinApkVersion() >= 17895000) {
                        if (!this.zzn.b(new f.a(this.zzk.a(), this.zzk.b(), this.zzk.c(), this.zzk.d()), this.zzu, zza())) {
                            String a4 = this.zzk.a();
                            String b3 = this.zzk.b();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(a4).length() + 34 + String.valueOf(b3).length());
                            sb2.append("unable to connect to service: ");
                            sb2.append(a4);
                            sb2.append(" on ");
                            sb2.append(b3);
                            Log.e("GmsClient", sb2.toString());
                            zza(16, (Bundle) null, this.zzc.get());
                        }
                    } else {
                        String valueOf = String.valueOf(this.zzk.a());
                        throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                } else if (i2 == 4) {
                    onConnectedLocked(t);
                }
            } else if (this.zzu != null) {
                f fVar2 = this.zzn;
                String a5 = this.zzk.a();
                String b4 = this.zzk.b();
                int c3 = this.zzk.c();
                i iVar2 = this.zzu;
                String zza3 = zza();
                boolean d3 = this.zzk.d();
                Objects.requireNonNull(fVar2);
                fVar2.c(new f.a(a5, b4, c3, d3), iVar2, zza3);
                this.zzu = null;
            }
        }
    }

    public void disconnect() {
        this.zzc.incrementAndGet();
        synchronized (this.zzt) {
            int size = this.zzt.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.zzt.get(i2).e();
            }
            this.zzt.clear();
        }
        synchronized (this.zzq) {
            this.zzr = null;
        }
        zza(1, (IInterface) null);
    }

    protected b(Context context, Looper looper, f fVar, com.google.android.gms.common.d dVar, int i2, a aVar, AbstractC0047b bVar, String str) {
        this.zzj = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzaa = null;
        this.zzab = false;
        this.zzac = null;
        this.zzc = new AtomicInteger(0);
        n.i(context, "Context must not be null");
        this.zzl = context;
        n.i(looper, "Looper must not be null");
        this.zzm = looper;
        n.i(fVar, "Supervisor must not be null");
        this.zzn = fVar;
        n.i(dVar, "API availability must not be null");
        this.zzo = dVar;
        this.zza = new g(looper);
        this.zzy = i2;
        this.zzw = aVar;
        this.zzx = bVar;
        this.zzz = str;
    }

    protected b(Context context, Handler handler, f fVar, com.google.android.gms.common.d dVar, int i2, a aVar, AbstractC0047b bVar) {
        this.zzj = null;
        this.zzp = new Object();
        this.zzq = new Object();
        this.zzt = new ArrayList<>();
        this.zzv = 1;
        this.zzaa = null;
        this.zzab = false;
        this.zzac = null;
        this.zzc = new AtomicInteger(0);
        n.i(context, "Context must not be null");
        this.zzl = context;
        n.i(handler, "Handler must not be null");
        this.zza = handler;
        this.zzm = handler.getLooper();
        n.i(fVar, "Supervisor must not be null");
        this.zzn = fVar;
        n.i(dVar, "API availability must not be null");
        this.zzo = dVar;
        this.zzy = i2;
        this.zzw = aVar;
        this.zzx = bVar;
        this.zzz = null;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final boolean zza(int i2, int i3, T t) {
        synchronized (this.zzp) {
            if (this.zzv != i2) {
                return false;
            }
            zza(i3, t);
            return true;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(int i2) {
        int i3;
        if (zzb()) {
            i3 = 5;
            this.zzab = true;
        } else {
            i3 = 4;
        }
        Handler handler = this.zza;
        handler.sendMessage(handler.obtainMessage(i3, this.zzc.get(), 16));
    }

    /* access modifiers changed from: protected */
    public final void zza(int i2, Bundle bundle, int i3) {
        Handler handler = this.zza;
        handler.sendMessage(handler.obtainMessage(7, i3, -1, new l(i2)));
    }
}
