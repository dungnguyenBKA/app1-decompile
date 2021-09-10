.class public final Lcom/google/android/gms/internal/ads/zzdhx;
.super Lcom/google/android/gms/internal/ads/zzxo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzz;
.implements Lcom/google/android/gms/internal/ads/zzbtg;
.implements Lcom/google/android/gms/internal/ads/zzsh;


# instance fields
.field private final zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzbut:Ljava/lang/String;

.field private final zzfum:Landroid/view/ViewGroup;

.field private final zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

.field private final zzgxt:Landroid/content/Context;

.field private zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzhfc:Lcom/google/android/gms/internal/ads/zzdhv;

.field private final zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

.field private zzhfe:J

.field private zzhff:Lcom/google/android/gms/internal/ads/zzbkq;

.field protected zzhfg:Lcom/google/android/gms/internal/ads/zzblg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdhv;Lcom/google/android/gms/internal/ads/zzdil;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxo;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfe:J

    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzfum:Landroid/view/ViewGroup;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzgxt:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzbut:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfc:Lcom/google/android/gms/internal/ads/zzdhv;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    .line 10
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzbtg;)V

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhx;)Landroid/view/ViewGroup;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzfum:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzblg;)Lcom/google/android/gms/ads/internal/overlay/zzp;
    .locals 4

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzadp()Z

    move-result p1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvf:Lcom/google/android/gms/internal/ads/zzaba;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>()V

    const/16 v2, 0x32

    .line 19
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, v0

    .line 21
    :goto_1
    iput p1, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingRight:I

    .line 22
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingTop:I

    .line 23
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingBottom:I

    .line 24
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzgxt:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzs;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhx;Lcom/google/android/gms/internal/ads/zzblg;)Lcom/google/android/gms/ads/internal/overlay/zzp;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzblg;)Lcom/google/android/gms/ads/internal/overlay/zzp;

    move-result-object p0

    return-object p0
.end method

.method private final zzauc()Lcom/google/android/gms/internal/ads/zzvs;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzgxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzblg;->zzajq()Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdnu;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzblg;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzblg;->zzadp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 4
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzazn;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdhx;Lcom/google/android/gms/internal/ads/zzblg;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzc(Lcom/google/android/gms/internal/ads/zzblg;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzvs;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzauc()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzblg;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzblg;->zza(Lcom/google/android/gms/internal/ads/zzsh;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzblg;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzb(Lcom/google/android/gms/internal/ads/zzblg;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzdil;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    return-object p0
.end method

.method private final declared-synchronized zzeb(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblg;->zzajt()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzblg;->zzajt()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzsq;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdil;->onAdClosed()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzfum:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhff:Lcom/google/android/gms/internal/ads/zzbkq;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/internal/ads/zzrl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzb(Lcom/google/android/gms/internal/ads/zzrm;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    if-eqz v0, :cond_3

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfe:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfe:J

    sub-long v2, v0, v2

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzb(JI)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhx;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzbut:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfc:Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdif;->isLoading()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaau;)V
    .locals 0

    monitor-enter p0

    .line 29
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzacl;)V
    .locals 0

    monitor-enter p0

    .line 30
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzary;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzase;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsp;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzsp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzxc;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfc:Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzvx;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzww;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxs;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxz;)V
    .locals 0

    monitor-enter p0

    .line 28
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyb;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzi;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvl;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzgxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaz(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvl;->zzcia:Lcom/google/android/gms/internal/ads/zzve;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfd:Lcom/google/android/gms/internal/ads/zzdil;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdom;->zzhlx:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdil;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return v1

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhx;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 10
    monitor-exit p0

    return v1

    .line 11
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhy;-><init>(Lcom/google/android/gms/internal/ads/zzdhx;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfc:Lcom/google/android/gms/internal/ads/zzdhv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzbut:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdib;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdib;-><init>(Lcom/google/android/gms/internal/ads/zzdhx;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzdif;->zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzcze;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzalq()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfe:J

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblg;->zzajh()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafb()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbkq;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/d;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhff:Lcom/google/android/gms/internal/ads/zzbkq;

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdhz;-><init>(Lcom/google/android/gms/internal/ads/zzdhx;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbkq;->zza(ILjava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzaud()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaza;->zzzx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzbkw;->zzftw:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzeb(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzguy:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zzafa()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdhw;-><init>(Lcom/google/android/gms/internal/ads/zzdhx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzaue()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzbkw;->zzftw:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzeb(I)V

    return-void
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze(Lzv;)V
    .locals 0

    return-void
.end method

.method public final zzke()Lzv;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzfum:Landroid/view/ViewGroup;

    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzkf()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkg()Lcom/google/android/gms/internal/ads/zzvs;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->zzgxt:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblg;->zzajq()Lcom/google/android/gms/internal/ads/zzdmz;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zzb(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkh()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkj()Lcom/google/android/gms/internal/ads/zzxt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkk()Lcom/google/android/gms/internal/ads/zzwx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmt()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzbkw;->zzftu:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzeb(I)V

    return-void
.end method

.method public final zzvv()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzbkw;->zzftv:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzeb(I)V

    return-void
.end method
