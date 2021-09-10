.class public final Lcom/google/android/gms/ads/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzdy;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzdy;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lcom/google/android/gms/internal/ads/zzdsy;

.field private j:Landroid/content/Context;

.field private final k:Landroid/content/Context;

.field private l:Lcom/google/android/gms/internal/ads/zzazn;

.field private final m:Lcom/google/android/gms/internal/ads/zzazn;

.field private n:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->n:Ljava/util/concurrent/CountDownLatch;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf;->k:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Lcom/google/android/gms/internal/ads/zzazn;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzf;->h:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdsy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf;->i:Lcom/google/android/gms/internal/ads/zzdsy;

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabp;->zzcrs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzf;->g:Z

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabp;->zzcru:Lcom/google/android/gms/internal/ads/zzaba;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v1, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 18
    sget p2, Lcom/google/android/gms/internal/ads/zzcv;->zznj:I

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    goto :goto_0

    .line 19
    :cond_0
    sget p2, Lcom/google/android/gms/internal/ads/zzcv;->zznk:I

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    .line 20
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdue;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdue;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsy;)V

    .line 21
    new-instance p1, Lcom/google/android/gms/ads/internal/c;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/c;-><init>(Lcom/google/android/gms/ads/internal/zzf;)V

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdux;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdue;->zzayg()Lcom/google/android/gms/internal/ads/zzgp;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzcrt:Lcom/google/android/gms/internal/ads/zzaba;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzdux;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgp;Lcom/google/android/gms/internal/ads/zzdug;Z)V

    .line 26
    sget p1, Lcom/google/android/gms/internal/ads/zzdva;->zzhut:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdux;->zzek(I)Z

    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Z

    .line 28
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcsj:Lcom/google/android/gms/internal/ads/zzaba;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 32
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaza;->zzzx()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzf;->run()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/zzdsy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzf;->i:Lcom/google/android/gms/internal/ads/zzdsy;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/zzazn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzf;->m:Lcom/google/android/gms/internal/ads/zzazn;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/zzf;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzf;->k:Landroid/content/Context;

    return-object p0
.end method

.method private final d()Lcom/google/android/gms/internal/ads/zzdy;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzf;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Z

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzcv;->zznj:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    .line 4
    :goto_0
    sget v1, Lcom/google/android/gms/internal/ads/zzcv;->zznk:I

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdy;

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdy;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private final f()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 5
    aget-object v2, v2, v4

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_2
    array-length v3, v2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 7
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zza(III)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzeia:Z

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzcpp:Lcom/google/android/gms/internal/ads/zzaba;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzf;->g:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzf;->f:Z

    if-nez v2, :cond_1

    .line 6
    sget v2, Lcom/google/android/gms/internal/ads/zzcv;->zznj:I

    goto :goto_1

    .line 7
    :cond_1
    iget v2, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    .line 8
    :goto_1
    sget v3, Lcom/google/android/gms/internal/ads/zzcv;->zznj:I

    if-ne v2, v3, :cond_2

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzf;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    .line 11
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzef;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 13
    iget v2, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    sget v3, Lcom/google/android/gms/internal/ads/zzcv;->zznk:I

    if-ne v2, v3, :cond_3

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->h:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/ads/internal/b;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/ads/internal/zzf;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/zzf;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 18
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzds;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzds;

    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 20
    :try_start_2
    sget v5, Lcom/google/android/gms/internal/ads/zzcv;->zznj:I

    iput v5, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    .line 21
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 22
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzf;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/ads/internal/zzf;->e:I

    .line 23
    invoke-static {v5, v6, v1, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzef;

    move-result-object v1

    .line 24
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzf;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->i:Lcom/google/android/gms/internal/ads/zzdsy;

    const/16 v5, 0x7ef

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 27
    invoke-virtual {v1, v5, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;)Lkw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzf;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    return-void

    :catchall_0
    move-exception v1

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzf;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->j:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->l:Lcom/google/android/gms/internal/ads/zzazn;

    .line 34
    throw v1
.end method

.method public final zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzf;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->f()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 6
    :goto_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zza(III)V
    .locals 3

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->f()V

    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdy;->zza(III)V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->b:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->f()V

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/view/MotionEvent;)V

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->b:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->f()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 6
    :goto_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzf;->d()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(Landroid/view/View;)V

    :cond_0
    return-void
.end method
