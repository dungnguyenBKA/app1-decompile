.class public final Lcom/google/android/gms/internal/ads/zzef;
.super Lcom/google/android/gms/internal/ads/zzea;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzea;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzef;
    .locals 1

    .line 1
    sget p2, Lcom/google/android/gms/internal/ads/zzcv;->zznj:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzef;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzef;
    .locals 1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/content/Context;Z)V

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzea;->zza(Ljava/lang/String;Landroid/content/Context;ZI)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzef;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzef;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-object v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzfc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;Lcom/google/android/gms/internal/ads/zzcb$zza;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfc;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;",
            "Lcom/google/android/gms/internal/ads/zzcb$zza;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfc;->zzcg()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzxf:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfc;->zzbu()I

    move-result v6

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzea;->zza(Lcom/google/android/gms/internal/ads/zzfc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;Lcom/google/android/gms/internal/ads/zzcb$zza;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfw;

    const/16 v7, 0x18

    const-string v3, "STRTQE1n2Nae56fJRHDsAlh+RkDZLMqz8liSxR9TDmqE0af2eosWM09BrF9F7xVl"

    const-string v4, "is62fUaYcSmzgiuoZcKcHzaXthoDXTG3NdfDayg76F0="

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzea;->zza(Lcom/google/android/gms/internal/ads/zzfc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;Lcom/google/android/gms/internal/ads/zzcb$zza;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
