.class public final Lcom/google/android/gms/ads/internal/util/zzay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/zzaf;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzay;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcum:Lcom/google/android/gms/internal/ads/zzaba;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzan;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    :goto_1
    sput-object p1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzeo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzz;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lcom/google/android/gms/internal/ads/zzaf;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbe;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/util/zzbe;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaf;->zzd(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzab;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/android/gms/ads/internal/util/n;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/google/android/gms/ads/internal/util/n;-><init>(Lcom/google/android/gms/ads/internal/util/k;)V

    .line 2
    new-instance v4, Lcom/google/android/gms/ads/internal/util/m;

    invoke-direct {v4, p2, v8}, Lcom/google/android/gms/ads/internal/util/m;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/n;)V

    .line 3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaze;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/ads/zzaze;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v10, Lcom/google/android/gms/ads/internal/util/l;

    move-object v0, v10

    move v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object v5, p4

    move-object v6, p3

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/util/l;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzaj;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzaze;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaze;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "GET"

    .line 6
    invoke-virtual {v10}, Lcom/google/android/gms/ads/internal/util/l;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v10}, Lcom/google/android/gms/ads/internal/util/l;->zzg()[B

    move-result-object p4

    invoke-virtual {v9, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 8
    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzay;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {p1, v10}, Lcom/google/android/gms/internal/ads/zzaf;->zzd(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzab;

    return-object v8
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
