.class public final Lcom/google/android/gms/internal/ads/zzbax;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbaw;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

.field private final zzejw:Landroid/widget/FrameLayout;

.field private final zzejx:Lcom/google/android/gms/internal/ads/zzacc;

.field private final zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final zzejz:J

.field private zzeka:Lcom/google/android/gms/internal/ads/zzbav;

.field private zzekb:Z

.field private zzekc:Z

.field private zzekd:Z

.field private zzeke:Z

.field private zzekf:J

.field private zzekg:J

.field private zzekh:Ljava/lang/String;

.field private zzeki:[Ljava/lang/String;

.field private zzekj:Landroid/graphics/Bitmap;

.field private zzekk:Landroid/widget/ImageView;

.field private zzekl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbo;IZLcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzbbl;)V
    .locals 12

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, p2

    .line 2
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    .line 3
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzejx:Lcom/google/android/gms/internal/ads/zzacc;

    .line 4
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcno:Lcom/google/android/gms/internal/ads/zzaba;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x106000c

    .line 8
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 9
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabf()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v1

    const-string v2, "null reference"

    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabf()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzb;->zzbol:Lcom/google/android/gms/internal/ads/zzbay;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 13
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbay;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbo;IZLcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzbav;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-eqz v1, :cond_1

    .line 14
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v11, v11, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcnf:Lcom/google/android/gms/internal/ads/zzaba;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaar()V

    .line 19
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcnj:Lcom/google/android/gms/internal/ads/zzaba;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzejz:J

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcnh:Lcom/google/android/gms/internal/ads/zzaba;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzeke:Z

    if-eqz v9, :cond_3

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    const-string v2, "spinner_used"

    .line 26
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzacc;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbq;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->zza(Lcom/google/android/gms/internal/ads/zzbaw;)V

    .line 30
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v1, :cond_5

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbax;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbbo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    .line 3
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbbo;Ljava/lang/String;)V
    .locals 3

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    .line 10
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    .line 11
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbbo;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    .line 7
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final zzaat()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaau()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabe()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekc:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekd:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabe()Landroid/app/Activity;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekc:Z

    :cond_1
    return-void
.end method

.method private final varargs zzd(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->pause()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->stop()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaau()V

    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->pause()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbba;->zza(Lcom/google/android/gms/internal/ads/zzbav;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 6
    throw v0
.end method

.method public final onPaused()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    .line 1
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaau()V

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekb:Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->resume()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->pause()V

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekg:J

    .line 5
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbaz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbaz;-><init>(Lcom/google/android/gms/internal/ads/zzbax;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->resume()V

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->pause()V

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekg:J

    const/4 p1, 0x0

    .line 5
    :goto_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbe;-><init>(Lcom/google/android/gms/internal/ads/zzbax;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->pause()V

    return-void
.end method

.method public final play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->play()V

    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->seekTo(I)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbav;->zzejv:Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbp;->setVolume(F)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzaaj()V

    return-void
.end method

.method public final zza(FF)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zza(FF)V

    :cond_0
    return-void
.end method

.method public final zzaak()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->resume()V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbc;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzaal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabe()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekc:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabe()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekd:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeix:Lcom/google/android/gms/internal/ads/zzbbo;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabe()Landroid/app/Activity;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekc:Z

    .line 11
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekb:Z

    return-void
.end method

.method public final zzaam()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaau()V

    return-void
.end method

.method public final zzaan()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejy:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->pause()V

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekg:J

    .line 8
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbb;-><init>(Lcom/google/android/gms/internal/ads/zzbax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzaao()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekk:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekl:Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyg()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejz:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeke:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejx:Lcom/google/android/gms/internal/ads/zzacc;

    if-eqz v0, :cond_3

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzacc;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final zzaap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbav;->zzejv:Lcom/google/android/gms/internal/ads/zzbbp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbp;->setMuted(Z)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzaaj()V

    return-void
.end method

.method public final zzaaq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbav;->zzejv:Lcom/google/android/gms/internal/ads/zzbbp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbp;->setMuted(Z)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzaaj()V

    return-void
.end method

.method public final zzaar()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AdMob - "

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbav;->zzaad()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method final zzaas()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekf:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcrm:Lcom/google/android/gms/internal/ads/zzaba;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "time"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "timeupdate"

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v6

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "totalBytes"

    aput-object v2, v3, v7

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbav;->getTotalBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "qoeCachedBytes"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbav;->zznb()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "qoeLoadedBytes"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbav;->zzaah()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "droppedFrames"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbav;->zzaai()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "reportTime"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 13
    invoke-direct {p0, v8, v3}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    aput-object v5, v3, v6

    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-direct {p0, v8, v3}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekf:J

    :cond_2
    return-void
.end method

.method final synthetic zzav(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasWindowFocus"

    aput-object v2, v0, v1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "windowFocusChanged"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekh:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeki:[Ljava/lang/String;

    return-void
.end method

.method public final zzd(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzejw:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzdk(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzdk(I)V

    return-void
.end method

.method public final zzdl(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzdl(I)V

    return-void
.end method

.method public final zzdm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzdm(I)V

    return-void
.end method

.method public final zzdn(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzdn(I)V

    return-void
.end method

.method public final zzdo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzdo(I)V

    return-void
.end method

.method public final zze(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzfb()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekg:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbav;->getVideoWidth()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbav;->getVideoHeight()I

    move-result v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "videoWidth"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "canplaythrough"

    .line 9
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzhy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeka:Lcom/google/android/gms/internal/ads/zzbav;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeki:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzk(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzeke:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcni:Lcom/google/android/gms/internal/ads/zzaba;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p2, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 8
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekj:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzekl:Z

    :cond_1
    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
