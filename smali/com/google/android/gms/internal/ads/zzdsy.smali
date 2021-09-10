.class public final Lcom/google/android/gms/internal/ads/zzdsy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile zzhsm:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhsl:Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw<",
            "Lcom/google/android/gms/internal/ads/zztz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;->zzep:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsy;->zzhsm:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lkw<",
            "Lcom/google/android/gms/internal/ads/zztz;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsy;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsy;->executor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzhsl:Lkw;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdsy;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdta;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p1, v0}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsy;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsy;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkw;)V

    return-object v1
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;ILkw;)Ljava/lang/Boolean;
    .locals 1

    .line 14
    invoke-virtual {p2}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p2}, Lkw;->j()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zztz;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbw$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejh;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zztz;->zzf([B)Lcom/google/android/gms/internal/ads/zzud;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzud;->zzbv(I)Lcom/google/android/gms/internal/ads/zzud;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzud;->log()V

    .line 19
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 20
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbw$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    move-result-object p6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    move-result-object p6

    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzd(J)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    move-result-object p2

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/ads/zzdsy;->zzhsm:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    if-eqz p4, :cond_0

    .line 9
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzdwv;->zza(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    move-result-object p3

    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    :cond_0
    if-eqz p7, :cond_1

    .line 11
    invoke-virtual {p2, p7}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    :cond_1
    if-eqz p5, :cond_2

    .line 12
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    .line 13
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzhsl:Lkw;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsy;->executor:Ljava/util/concurrent/Executor;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-direct {p5, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsz;-><init>(Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;I)V

    invoke-virtual {p3, p4, p5}, Lkw;->g(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzhsm:Lcom/google/android/gms/internal/ads/zzbw$zza$zzc;

    return-void
.end method

.method static final synthetic zzcj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztz;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztz;

    const-string v1, "GLAS"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza(IJLjava/lang/Exception;)Lkw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public final zza(IJLjava/lang/String;Ljava/util/Map;)Lkw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(IJLjava/lang/String;)Lkw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v7, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(ILjava/lang/String;)Lkw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(IJ)Lkw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lkw;

    move-result-object p1

    return-object p1
.end method
