.class final Lcom/google/android/gms/internal/ads/zzmy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zzark:Lcom/google/android/gms/internal/ads/zzkc;

.field private final zzbes:[Lcom/google/android/gms/internal/ads/zzka;

.field private zzbet:Lcom/google/android/gms/internal/ads/zzka;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzka;Lcom/google/android/gms/internal/ads/zzkc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbes:[Lcom/google/android/gms/internal/ads/zzka;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbet:Lcom/google/android/gms/internal/ads/zzka;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzka;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbet:Lcom/google/android/gms/internal/ads/zzka;

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzka;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbet:Lcom/google/android/gms/internal/ads/zzka;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbes:[Lcom/google/android/gms/internal/ads/zzka;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzka;->zza(Lcom/google/android/gms/internal/ads/zzjz;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbet:Lcom/google/android/gms/internal/ads/zzka;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjz;->zzgq()V

    goto :goto_2

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjz;->zzgq()V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjz;->zzgq()V

    .line 8
    throw p2

    .line 9
    :catch_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjz;->zzgq()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbet:Lcom/google/android/gms/internal/ads/zzka;

    if-eqz p1, :cond_3

    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzka;->zza(Lcom/google/android/gms/internal/ads/zzkc;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbet:Lcom/google/android/gms/internal/ads/zzka;

    return-object p1

    .line 13
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zznt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmy;->zzbes:[Lcom/google/android/gms/internal/ads/zzka;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpt;->zza([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lic;->m(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "None of the available extractors ("

    const-string v3, ") could read the stream."

    invoke-static {v1, v2, v0, v3}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zznt;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
