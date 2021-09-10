.class public final Lcom/google/android/gms/internal/gtm/zzcc;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzcb;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzcw;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfo;

.field private zzd:Lcom/google/android/gms/internal/gtm/zzey;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzr()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzfo;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcb;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzcb;-><init>(Lcom/google/android/gms/internal/gtm/zzcc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzby;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzby;-><init>(Lcom/google/android/gms/internal/gtm/zzcc;Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzb:Lcom/google/android/gms/internal/gtm/zzcw;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzcc;)Lcom/google/android/gms/internal/gtm/zzcb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/gtm/zzcc;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    const-string v0, "Disconnected from device AnalyticsService"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzk()V

    :cond_0
    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/gtm/zzcc;Lcom/google/android/gms/internal/gtm/zzey;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzj()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzj()V

    return-void
.end method

.method private final zzj()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzb:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzK:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcw;->zzg(J)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->b()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzk()V

    :cond_0
    return-void
.end method

.method protected final zzd()V
    .locals 0

    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzey;->zze()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Failed to clear hits from AnalyticsService"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    return v1
.end method

.method public final zzf()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcb;->zza()Lcom/google/android/gms/internal/gtm/zzey;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzj()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/gtm/zzex;)Z
    .locals 7

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/q;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcc;->zzd:Lcom/google/android/gms/internal/gtm/zzey;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzk()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzg()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzd()J

    move-result-wide v3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzey;->zzf(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    return v0
.end method
