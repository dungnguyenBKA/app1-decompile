.class public final Lcom/google/android/gms/internal/ads/zzbnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbse;
.implements Lcom/google/android/gms/internal/ads/zzbtb;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private zzfvs:Lzv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzfvt:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method

.method private final declared-synchronized zzakn()V
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzm(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzehy:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjr:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvp:Lcom/google/android/gms/internal/ads/zzaba;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjr:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v2, :cond_3

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarn;->zzdri:Lcom/google/android/gms/internal/ads/zzarn;

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzarm;->zzdrb:Lcom/google/android/gms/internal/ads/zzarm;

    :goto_0
    move-object v11, v0

    move-object v10, v2

    goto :goto_1

    .line 15
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarn;->zzdrg:Lcom/google/android/gms/internal/ads/zzarn;

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiz:I

    if-ne v2, v1, :cond_4

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzarm;->zzdrc:Lcom/google/android/gms/internal/ads/zzarm;

    goto :goto_0

    .line 18
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzarm;->zzdra:Lcom/google/android/gms/internal/ads/zzarm;

    goto :goto_0

    .line 19
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzcht:Ljava/lang/String;

    .line 21
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarm;Lcom/google/android/gms/internal/ads/zzarn;Ljava/lang/String;)Lzv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 24
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    .line 25
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Lzv;Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzaq(Lzv;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzarl;->zzab(Lzv;)V

    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvt:Z

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v1, "onSdkLoaded"

    new-instance v2, Lx;

    invoke-direct {v2}, Lx;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvt:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzakn()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdww:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lzv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_1

    const-string v1, "onSdkImpression"

    .line 4
    new-instance v2, Lx;

    invoke-direct {v2}, Lx;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzakn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
