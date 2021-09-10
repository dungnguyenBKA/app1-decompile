.class final Lcom/google/android/gms/common/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/common/internal/m0;

.field private static final b:Ljava/lang/Object;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/l;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)Lcom/google/android/gms/common/t;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/l;->d(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)Lcom/google/android/gms/common/t;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5
    throw p0
.end method

.method static final b(ZLjava/lang/String;Lcom/google/android/gms/common/m;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/common/l;->d(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)Lcom/google/android/gms/common/t;

    move-result-object v2

    .line 2
    iget-boolean v2, v2, Lcom/google/android/gms/common/t;->a:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "debug cert rejected"

    goto :goto_1

    :cond_1
    const-string v2, "not whitelisted"

    :goto_1
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    const-string v0, "SHA-1"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/util/a;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/m;->P()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/util/g;->a([B)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, p1

    const/4 p0, 0x4

    const-string p1, "12451009.false"

    aput-object p1, v3, p0

    const-string p0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    .line 6
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/l;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/l;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/l;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    .line 3
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)Lcom/google/android/gms/common/t;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/l;->a:Lcom/google/android/gms/common/internal/m0;

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcom/google/android/gms/common/l;->c:Landroid/content/Context;

    const-string v2, "null reference"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/google/android/gms/common/l;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    sget-object v2, Lcom/google/android/gms/common/l;->a:Lcom/google/android/gms/common/internal/m0;

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lcom/google/android/gms/common/l;->c:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->k:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v4, "com.google.android.gms.googlecertificates"

    .line 7
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->e(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/common/internal/l0;->O(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/m0;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/l;->a:Lcom/google/android/gms/common/internal/m0;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/android/gms/common/l;->c:Landroid/content/Context;

    const-string v2, "null reference"

    .line 12
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcom/google/android/gms/common/zzj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/zzj;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/m;ZZ)V

    .line 14
    :try_start_3
    sget-object p3, Lcom/google/android/gms/common/l;->a:Lcom/google/android/gms/common/internal/m0;

    sget-object v2, Lcom/google/android/gms/common/l;->c:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v2

    .line 16
    invoke-interface {p3, v1, v2}, Lcom/google/android/gms/common/internal/m0;->I(Lcom/google/android/gms/common/zzj;Lzv;)Z

    move-result p3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p3, :cond_2

    .line 17
    invoke-static {}, Lcom/google/android/gms/common/t;->a()Lcom/google/android/gms/common/t;

    move-result-object p0

    return-object p0

    .line 18
    :cond_2
    new-instance p3, Lcom/google/android/gms/common/n;

    invoke-direct {p3, p2, p0, p1}, Lcom/google/android/gms/common/n;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/m;)V

    .line 19
    new-instance p0, Lcom/google/android/gms/common/v;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/common/v;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/w;)V

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    .line 20
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    .line 21
    new-instance p2, Lcom/google/android/gms/common/t;

    invoke-direct {p2, v0, p1, p0}, Lcom/google/android/gms/common/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object p2

    :catch_1
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    .line 22
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module init: "

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    .line 24
    :goto_1
    new-instance p2, Lcom/google/android/gms/common/t;

    invoke-direct {p2, v0, p1, p0}, Lcom/google/android/gms/common/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method
