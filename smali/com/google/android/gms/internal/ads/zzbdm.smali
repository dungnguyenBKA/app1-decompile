.class public final Lcom/google/android/gms/internal/ads/zzbdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Lcom/google/android/gms/internal/ads/zzbbo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Precache invalid numeric parameter \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbo;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "google.afma.Notify_dt"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Precache GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzln()Lcom/google/android/gms/internal/ads/zzbde;

    const-string v0, "abort"

    .line 10
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbde;->zzc(Lcom/google/android/gms/internal/ads/zzbbo;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Precache abort but no precache task running."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "src"

    .line 13
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "periodicReportIntervalMs"

    .line 14
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "demuxed"

    .line 15
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 16
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 18
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 19
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v7

    goto :goto_2

    :catch_0
    nop

    const-string v3, "Malformed demuxed URL list for precache: "

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    move-object v3, v6

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 21
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbde;->zzd(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string p1, "Precache task is already running."

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabf()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v2

    if-nez v2, :cond_8

    const-string p1, "Precache requires a dependency provider."

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbl;

    const-string v5, "flags"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Ljava/lang/String;)V

    const-string v5, "player"

    .line 26
    invoke-static {p2, v5}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_9

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_9
    if-eqz v1, :cond_a

    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzdp(I)V

    .line 29
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabf()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzb;->zzbok:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 31
    invoke-interface {v4, p1, v1, v6, v2}, Lcom/google/android/gms/internal/ads/zzbdl;->zza(Lcom/google/android/gms/internal/ads/zzbbo;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbdc;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zza;->zzye()Lcom/google/android/gms/internal/ads/zzdzw;

    goto :goto_3

    .line 34
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbde;->zzd(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbdc;->zzepm:Lcom/google/android/gms/internal/ads/zzbdd;

    :goto_3
    const-string p1, "minBufferMs"

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zzdk(I)V

    :cond_c
    const-string p1, "maxBufferMs"

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zzdl(I)V

    :cond_d
    const-string p1, "bufferForPlaybackMs"

    .line 40
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zzdm(I)V

    :cond_e
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    .line 42
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zzdn(I)V

    :cond_f
    return-void

    :cond_10
    const-string p1, "Precache must specify a source."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void
.end method
