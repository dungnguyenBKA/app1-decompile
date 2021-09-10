package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.w;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

public abstract class MediaBrowserServiceCompat extends Service {
    static final boolean e = Log.isLoggable("MBServiceCompat", 3);
    private b b;
    final x<IBinder, a> c = new x<>();
    final l d = new l();

    /* access modifiers changed from: private */
    public class a implements IBinder.DeathRecipient {
        public final String a;
        public final j b;
        public final HashMap<String, List<j2<IBinder, Bundle>>> c = new HashMap<>();

        /* renamed from: androidx.media.MediaBrowserServiceCompat$a$a  reason: collision with other inner class name */
        class RunnableC0015a implements Runnable {
            RunnableC0015a() {
            }

            public void run() {
                a aVar = a.this;
                MediaBrowserServiceCompat.this.c.remove(((k) aVar.b).a());
            }
        }

        a(String str, int i, int i2, Bundle bundle, j jVar) {
            this.a = str;
            if (Build.VERSION.SDK_INT >= 28) {
                new z(str, i, i2);
            }
            this.b = jVar;
        }

        public void binderDied() {
            MediaBrowserServiceCompat.this.d.post(new RunnableC0015a());
        }
    }

    interface b {
        void b();

        IBinder d(Intent intent);
    }

    class c implements b, t {
        final List<Bundle> a = new ArrayList();
        Object b;
        Messenger c;

        class a extends h<List<MediaBrowserCompat.MediaItem>> {
            final /* synthetic */ s e;

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            a(c cVar, Object obj, s sVar) {
                super(obj);
                this.e = sVar;
            }

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            /* access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.h
            public void d(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList;
                List<MediaBrowserCompat.MediaItem> list2 = list;
                if (list2 != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list2) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                this.e.a(arrayList);
            }
        }

        c() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.b
        public void b() {
            r rVar = new r(MediaBrowserServiceCompat.this, this);
            this.b = rVar;
            rVar.onCreate();
        }

        @Override // androidx.media.t
        public void c(String str, s<List<Parcel>> sVar) {
            MediaBrowserServiceCompat.this.c(str, new a(this, str, sVar));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.b
        public IBinder d(Intent intent) {
            return ((MediaBrowserService) this.b).onBind(intent);
        }

        @Override // androidx.media.t
        public q f(String str, int i, Bundle bundle) {
            if (!(bundle == null || bundle.getInt("extra_client_version", 0) == 0)) {
                bundle.remove("extra_client_version");
                this.c = new Messenger(MediaBrowserServiceCompat.this.d);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("extra_service_version", 2);
                bundle2.putBinder("extra_messenger", this.c.getBinder());
                Objects.requireNonNull(MediaBrowserServiceCompat.this);
                this.a.add(bundle2);
            }
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            new HashMap();
            if (Build.VERSION.SDK_INT >= 28) {
                new z(str, -1, i);
            }
            Objects.requireNonNull(mediaBrowserServiceCompat);
            MediaBrowserServiceCompat.this.b(str, i, bundle);
            Objects.requireNonNull(MediaBrowserServiceCompat.this);
            return null;
        }
    }

    class d extends c implements v {

        class a extends h<MediaBrowserCompat.MediaItem> {
            final /* synthetic */ s e;

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            a(d dVar, Object obj, s sVar) {
                super(obj);
                this.e = sVar;
            }

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            /* access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.h
            public void d(MediaBrowserCompat.MediaItem mediaItem) {
                MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                if (mediaItem2 == null) {
                    this.e.a(null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                mediaItem2.writeToParcel(obtain, 0);
                this.e.a(obtain);
            }
        }

        d() {
            super();
        }

        @Override // androidx.media.v
        public void a(String str, s<Parcel> sVar) {
            MediaBrowserServiceCompat.this.e(new a(this, str, sVar));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c, androidx.media.MediaBrowserServiceCompat.b
        public void b() {
            u uVar = new u(MediaBrowserServiceCompat.this, this);
            this.b = uVar;
            uVar.onCreate();
        }
    }

    class e extends d implements w.c {

        class a extends h<List<MediaBrowserCompat.MediaItem>> {
            final /* synthetic */ w.b e;

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            a(e eVar, Object obj, w.b bVar) {
                super(obj);
                this.e = bVar;
            }

            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            /* access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.h
            public void d(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList<Parcel> arrayList;
                List<MediaBrowserCompat.MediaItem> list2 = list;
                ArrayList arrayList2 = null;
                if (list2 != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list2) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                w.b bVar = this.e;
                int a = a();
                Objects.requireNonNull(bVar);
                try {
                    w.a.setInt(bVar.a, a);
                } catch (IllegalAccessException e2) {
                    Log.w("MBSCompatApi26", e2);
                }
                MediaBrowserService.Result result = bVar.a;
                if (arrayList != null) {
                    arrayList2 = new ArrayList();
                    for (Parcel parcel : arrayList) {
                        parcel.setDataPosition(0);
                        arrayList2.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                        parcel.recycle();
                    }
                }
                result.sendResult(arrayList2);
            }
        }

        e() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.c, androidx.media.MediaBrowserServiceCompat.b, androidx.media.MediaBrowserServiceCompat.d
        public void b() {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            Field field = w.a;
            w.a aVar = new w.a(mediaBrowserServiceCompat, this);
            this.b = aVar;
            aVar.onCreate();
        }

        @Override // androidx.media.w.c
        public void e(String str, w.b bVar, Bundle bundle) {
            MediaBrowserServiceCompat.this.d(str, new a(this, str, bVar));
        }
    }

    class f extends e {
        f(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
        }
    }

    class g implements b {
        private Messenger a;

        g() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.b
        public void b() {
            this.a = new Messenger(MediaBrowserServiceCompat.this.d);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.b
        public IBinder d(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.a.getBinder();
            }
            return null;
        }
    }

    public static class h<T> {
        private final Object a;
        private boolean b;
        private boolean c;
        private int d;

        h(Object obj) {
            this.a = obj;
        }

        /* access modifiers changed from: package-private */
        public int a() {
            return this.d;
        }

        /* access modifiers changed from: package-private */
        public boolean b() {
            return this.b || this.c;
        }

        /* access modifiers changed from: package-private */
        public void c(Bundle bundle) {
            StringBuilder q = ic.q("It is not supported to send an error for ");
            q.append(this.a);
            throw new UnsupportedOperationException(q.toString());
        }

        /* access modifiers changed from: package-private */
        public void d(T t) {
            throw null;
        }

        public void e(Bundle bundle) {
            if (this.b || this.c) {
                StringBuilder q = ic.q("sendError() called when either sendResult() or sendError() had already been called for: ");
                q.append(this.a);
                throw new IllegalStateException(q.toString());
            }
            this.c = true;
            c(null);
        }

        public void f(T t) {
            if (this.b || this.c) {
                StringBuilder q = ic.q("sendResult() called when either sendResult() or sendError() had already been called for: ");
                q.append(this.a);
                throw new IllegalStateException(q.toString());
            }
            this.b = true;
            d(null);
        }

        /* access modifiers changed from: package-private */
        public void g(int i) {
            this.d = i;
        }
    }

    /* access modifiers changed from: private */
    public class i {
        i() {
        }
    }

    /* access modifiers changed from: private */
    public interface j {
    }

    /* access modifiers changed from: private */
    public static class k implements j {
        final Messenger a;

        k(Messenger messenger) {
            this.a = messenger;
        }

        private void d(int i, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.a.send(obtain);
        }

        public IBinder a() {
            return this.a.getBinder();
        }

        public void b() {
            d(2, null);
        }

        public void c(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            d(3, bundle3);
        }
    }

    private final class l extends Handler {
        private final i a;

        l() {
            this.a = new i();
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle);
                    i iVar = this.a;
                    String string = data.getString("data_package_name");
                    int i = data.getInt("data_calling_pid");
                    int i2 = data.getInt("data_calling_uid");
                    k kVar = new k(message.replyTo);
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                    Objects.requireNonNull(mediaBrowserServiceCompat);
                    boolean z = false;
                    if (string != null) {
                        String[] packagesForUid = mediaBrowserServiceCompat.getPackageManager().getPackagesForUid(i2);
                        int length = packagesForUid.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 < length) {
                                if (packagesForUid[i3].equals(string)) {
                                    z = true;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                    if (z) {
                        MediaBrowserServiceCompat.this.d.a(new h(iVar, kVar, string, i, i2, bundle));
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
                case 2:
                    i iVar2 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new i(iVar2, new k(message.replyTo)));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    i iVar3 = this.a;
                    String string2 = data.getString("data_media_item_id");
                    IBinder binder = data.getBinder("data_callback_token");
                    MediaBrowserServiceCompat.this.d.a(new j(iVar3, new k(message.replyTo), string2, binder, bundle2));
                    return;
                case 4:
                    i iVar4 = this.a;
                    String string3 = data.getString("data_media_item_id");
                    IBinder binder2 = data.getBinder("data_callback_token");
                    MediaBrowserServiceCompat.this.d.a(new k(iVar4, new k(message.replyTo), string3, binder2));
                    return;
                case 5:
                    i iVar5 = this.a;
                    String string4 = data.getString("data_media_item_id");
                    ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    k kVar2 = new k(message.replyTo);
                    Objects.requireNonNull(iVar5);
                    if (!TextUtils.isEmpty(string4) && resultReceiver != null) {
                        MediaBrowserServiceCompat.this.d.a(new l(iVar5, kVar2, string4, resultReceiver));
                        return;
                    }
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    i iVar6 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new m(iVar6, new k(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3));
                    return;
                case 7:
                    i iVar7 = this.a;
                    MediaBrowserServiceCompat.this.d.a(new n(iVar7, new k(message.replyTo)));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    i iVar8 = this.a;
                    String string5 = data.getString("data_search_query");
                    ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    k kVar3 = new k(message.replyTo);
                    Objects.requireNonNull(iVar8);
                    if (!TextUtils.isEmpty(string5) && resultReceiver2 != null) {
                        MediaBrowserServiceCompat.this.d.a(new o(iVar8, kVar3, string5, bundle4, resultReceiver2));
                        return;
                    }
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    i iVar9 = this.a;
                    String string6 = data.getString("data_custom_action");
                    ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    k kVar4 = new k(message.replyTo);
                    Objects.requireNonNull(iVar9);
                    if (!TextUtils.isEmpty(string6) && resultReceiver3 != null) {
                        MediaBrowserServiceCompat.this.d.a(new p(iVar9, kVar4, string6, bundle5, resultReceiver3));
                        return;
                    }
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: " + 2 + "\n  Client version: " + message.arg1);
                    return;
            }
        }

        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            data.putInt("data_calling_pid", Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }
    }

    /* JADX WARN: Incorrect args count in method signature: (Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$h<Landroid/os/Bundle;>;)V */
    public void a(h hVar) {
        hVar.e(null);
    }

    public abstract void b(String str, int i2, Bundle bundle);

    public abstract void c(String str, h<List<MediaBrowserCompat.MediaItem>> hVar);

    /* JADX WARN: Incorrect args count in method signature: (Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;Landroid/os/Bundle;)V */
    public void d(String str, h hVar) {
        hVar.g(1);
        c(str, hVar);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* JADX WARN: Incorrect args count in method signature: (Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$h<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;)V */
    public void e(h hVar) {
        hVar.g(2);
        hVar.f(null);
    }

    /* JADX WARN: Incorrect args count in method signature: (Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$h<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;)V */
    public void f(h hVar) {
        hVar.g(4);
        hVar.f(null);
    }

    public void g() {
    }

    public void h() {
    }

    public IBinder onBind(Intent intent) {
        return this.b.d(intent);
    }

    public void onCreate() {
        super.onCreate();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.b = new f(this);
        } else if (i2 >= 26) {
            this.b = new e();
        } else if (i2 >= 23) {
            this.b = new d();
        } else if (i2 >= 21) {
            this.b = new c();
        } else {
            this.b = new g();
        }
        this.b.b();
    }
}
