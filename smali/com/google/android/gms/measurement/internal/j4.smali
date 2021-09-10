.class public final Lcom/google/android/gms/measurement/internal/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/f5;


# static fields
.field private static volatile I:Lcom/google/android/gms/measurement/internal/j4;


# instance fields
.field private A:J

.field private volatile B:Ljava/lang/Boolean;

.field protected C:Ljava/lang/Boolean;

.field protected D:Ljava/lang/Boolean;

.field private volatile E:Z

.field private F:I

.field private final G:Ljava/util/concurrent/atomic/AtomicInteger;

.field final H:J

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lcom/google/android/gms/measurement/internal/u9;

.field private final g:Lcom/google/android/gms/measurement/internal/e;

.field private final h:Lcom/google/android/gms/measurement/internal/v3;

.field private final i:Lcom/google/android/gms/measurement/internal/i3;

.field private final j:Lcom/google/android/gms/measurement/internal/g4;

.field private final k:Lcom/google/android/gms/measurement/internal/o8;

.field private final l:Lcom/google/android/gms/measurement/internal/h9;

.field private final m:Lcom/google/android/gms/measurement/internal/d3;

.field private final n:Lcom/google/android/gms/common/util/d;

.field private final o:Lcom/google/android/gms/measurement/internal/z6;

.field private final p:Lcom/google/android/gms/measurement/internal/l6;

.field private final q:Lcom/google/android/gms/measurement/internal/a2;

.field private final r:Lcom/google/android/gms/measurement/internal/p6;

.field private final s:Ljava/lang/String;

.field private t:Lcom/google/android/gms/measurement/internal/c3;

.field private u:Lcom/google/android/gms/measurement/internal/z7;

.field private v:Lcom/google/android/gms/measurement/internal/m;

.field private w:Lcom/google/android/gms/measurement/internal/a3;

.field private x:Lcom/google/android/gms/measurement/internal/z3;

.field private y:Z

.field private z:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l5;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/u9;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/internal/u9;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/u9;

    sput-object v2, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/u9;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/l5;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/l5;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/l5;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/l5;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/j4;->e:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/l5;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/l5;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Z

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/l5;->g:Lcom/google/android/gms/internal/measurement/zzy;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/j4;->C:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->D:Ljava/lang/Boolean;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzb(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/d;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/l5;->i:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/e;

    .line 14
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 15
    new-instance v3, Lcom/google/android/gms/measurement/internal/v3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/v3;

    new-instance v3, Lcom/google/android/gms/measurement/internal/i3;

    .line 17
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/i3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/i3;

    .line 19
    new-instance v3, Lcom/google/android/gms/measurement/internal/h9;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/h9;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/h9;

    .line 21
    new-instance v3, Lcom/google/android/gms/measurement/internal/d3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/d3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->m:Lcom/google/android/gms/measurement/internal/d3;

    new-instance v3, Lcom/google/android/gms/measurement/internal/a2;

    .line 23
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/a2;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->q:Lcom/google/android/gms/measurement/internal/a2;

    new-instance v3, Lcom/google/android/gms/measurement/internal/z6;

    .line 24
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/z6;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y3;->j()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->o:Lcom/google/android/gms/measurement/internal/z6;

    new-instance v3, Lcom/google/android/gms/measurement/internal/l6;

    .line 26
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/l6;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y3;->j()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/l6;

    new-instance v3, Lcom/google/android/gms/measurement/internal/o8;

    .line 28
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/o8;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y3;->j()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->k:Lcom/google/android/gms/measurement/internal/o8;

    new-instance v3, Lcom/google/android/gms/measurement/internal/p6;

    .line 30
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/p6;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->r:Lcom/google/android/gms/measurement/internal/p6;

    .line 32
    new-instance v3, Lcom/google/android/gms/measurement/internal/g4;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/g4;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/l5;->g:Lcom/google/android/gms/internal/measurement/zzy;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzy;->zzb:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 34
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/l6;->c:Lcom/google/android/gms/measurement/internal/k6;

    if-nez v4, :cond_4

    .line 38
    new-instance v4, Lcom/google/android/gms/measurement/internal/k6;

    invoke-direct {v4, v1}, Lcom/google/android/gms/measurement/internal/k6;-><init>(Lcom/google/android/gms/measurement/internal/l6;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/l6;->c:Lcom/google/android/gms/measurement/internal/k6;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/l6;->c:Lcom/google/android/gms/measurement/internal/k6;

    .line 39
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/l6;->c:Lcom/google/android/gms/measurement/internal/k6;

    .line 40
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 44
    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/i4;

    .line 45
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/i4;-><init>(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/l5;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/g4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/j4;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzy;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzy;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzy;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzy;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const-string v0, "null reference"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/j4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/internal/l5;

    .line 6
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/l5;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/j4;-><init>(Lcom/google/android/gms/measurement/internal/l5;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    const-string p2, "null reference"

    .line 11
    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    sget-object p0, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    .line 15
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    const-string p1, "null reference"

    .line 16
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    sget-object p0, Lcom/google/android/gms/measurement/internal/j4;->I:Lcom/google/android/gms/measurement/internal/j4;

    return-object p0
.end method

.method static s(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/l5;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/u9;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e5;->l()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/m;

    new-instance v0, Lcom/google/android/gms/measurement/internal/a3;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/l5;->f:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/a3;-><init>(Lcom/google/android/gms/measurement/internal/j4;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y3;->j()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->w:Lcom/google/android/gms/measurement/internal/a3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/c3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/c3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y3;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/c3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z7;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/z7;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y3;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/z7;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/h9;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e5;->m()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/v3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e5;->m()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/z3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->x:Lcom/google/android/gms/measurement/internal/z3;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->w:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->n()J

    const-wide/32 v1, 0x9858

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a3;->o()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h9;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/measurement/internal/j4;->F:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/j4;->F:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Z

    return-void
.end method

.method private static final t(Lcom/google/android/gms/measurement/internal/d5;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final u(Lcom/google/android/gms/measurement/internal/y3;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final v(Lcom/google/android/gms/measurement/internal/e5;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/measurement/internal/o8;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->k:Lcom/google/android/gms/measurement/internal/o8;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->u(Lcom/google/android/gms/measurement/internal/y3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->k:Lcom/google/android/gms/measurement/internal/o8;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/measurement/internal/z3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->x:Lcom/google/android/gms/measurement/internal/z3;

    return-object v0
.end method

.method final C()Lcom/google/android/gms/measurement/internal/g4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/g4;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/measurement/internal/l6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/l6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->u(Lcom/google/android/gms/measurement/internal/y3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/l6;

    return-object v0
.end method

.method public final E()Lcom/google/android/gms/measurement/internal/h9;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/h9;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->t(Lcom/google/android/gms/measurement/internal/d5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->l:Lcom/google/android/gms/measurement/internal/h9;

    return-object v0
.end method

.method public final F()Lcom/google/android/gms/measurement/internal/d3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->m:Lcom/google/android/gms/measurement/internal/d3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->t(Lcom/google/android/gms/measurement/internal/d5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->m:Lcom/google/android/gms/measurement/internal/d3;

    return-object v0
.end method

.method public final G()Lcom/google/android/gms/measurement/internal/c3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/c3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->u(Lcom/google/android/gms/measurement/internal/y3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->t:Lcom/google/android/gms/measurement/internal/c3;

    return-object v0
.end method

.method public final H()Lcom/google/android/gms/measurement/internal/p6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->r:Lcom/google/android/gms/measurement/internal/p6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->v(Lcom/google/android/gms/measurement/internal/e5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->r:Lcom/google/android/gms/measurement/internal/p6;

    return-object v0
.end method

.method public final I()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->e:Z

    return v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Lcom/google/android/gms/measurement/internal/z6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->o:Lcom/google/android/gms/measurement/internal/z6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->u(Lcom/google/android/gms/measurement/internal/y3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->o:Lcom/google/android/gms/measurement/internal/z6;

    return-object v0
.end method

.method public final P()Lcom/google/android/gms/measurement/internal/z7;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/z7;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->u(Lcom/google/android/gms/measurement/internal/y3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/z7;

    return-object v0
.end method

.method public final Q()Lcom/google/android/gms/measurement/internal/m;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/m;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->v(Lcom/google/android/gms/measurement/internal/e5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->v:Lcom/google/android/gms/measurement/internal/m;

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/common/util/d;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/i3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/i3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->v(Lcom/google/android/gms/measurement/internal/e5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/i3;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/a3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->w:Lcom/google/android/gms/measurement/internal/a3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->u(Lcom/google/android/gms/measurement/internal/y3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->w:Lcom/google/android/gms/measurement/internal/a3;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/g4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/g4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->v(Lcom/google/android/gms/measurement/internal/e5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->j:Lcom/google/android/gms/measurement/internal/g4;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/a2;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->q:Lcom/google/android/gms/measurement/internal/a2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final h(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    return v0

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->q()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x3

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/u9;

    const-string v3, "firebase_analytics_collection_enabled"

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x4

    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x5

    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v3, Lcom/google/android/gms/measurement/internal/v2;->T:Lcom/google/android/gms/measurement/internal/u2;

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->B:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x7

    return v0

    :cond_c
    return v1
.end method

.method public final l(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Z

    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->E:Z

    return v0
.end method

.method final n()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/j4;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/j4;->F:I

    return-void
.end method

.method final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final p()Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/j4;->y:Z

    if-eqz v0, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j4;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/d;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/j4;->A:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/d;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j4;->A:J

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h9;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->E()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/b4;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/h9;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->z:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a3;->q()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a3;->r()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/h9;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a3;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 19
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->z:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->z:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->H()Lcom/google/android/gms/measurement/internal/p6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->v(Lcom/google/android/gms/measurement/internal/e5;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a3;->o()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v3;->n(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->y()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->H()Lcom/google/android/gms/measurement/internal/p6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->n()J

    .line 15
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/v3;->x:Lcom/google/android/gms/measurement/internal/s3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s3;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    add-long/2addr v4, v6

    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-wide/32 v9, 0x9858

    .line 20
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/h9;->M()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-string v9, "v%s.%s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    aput-object v1, v6, v11

    aput-object v0, v6, v7

    const/4 v1, 0x3

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v1

    const-string v1, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    .line 22
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "&ddl_test=1"

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_2
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    if-eqz v3, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->H()Lcom/google/android/gms/measurement/internal/p6;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/h4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/h4;-><init>(Lcom/google/android/gms/measurement/internal/j4;)V

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e5;->k()V

    .line 32
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/o6;

    .line 34
    invoke-direct {v5, v1, v0, v3, v2}, Lcom/google/android/gms/measurement/internal/o6;-><init>(Lcom/google/android/gms/measurement/internal/p6;Ljava/lang/String;Ljava/net/URL;Lcom/google/android/gms/measurement/internal/h4;)V

    .line 35
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/g4;->t(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    .line 36
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic r(Ljava/lang/String;ILjava/lang/Throwable;[B)V
    .locals 7

    const-string p1, "timestamp"

    const-string v0, "gclid"

    const-string v1, ""

    const-string v2, "deeplink"

    const/16 v3, 0x130

    const/16 v4, 0xc8

    if-eq p2, v4, :cond_0

    const/16 v4, 0xcc

    if-eq p2, v4, :cond_0

    if-ne p2, v3, :cond_8

    const/16 p2, 0x130

    :cond_0
    if-nez p3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/v3;->w:Lcom/google/android/gms/measurement/internal/q3;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/q3;->b(Z)V

    if-eqz p4, :cond_7

    array-length p2, p4

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-wide/16 v3, 0x0

    invoke-virtual {p3, p1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p3

    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x0

    invoke-virtual {p3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "_cis"

    const-string v0, "ddp"

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/j4;->p:Lcom/google/android/gms/measurement/internal/l6;

    const-string v0, "auto"

    const-string v1, "_cmp"

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/l6;->Q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object p4, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    const-string v0, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {p4, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-interface {p4, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->u()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/g3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected final w(Lcom/google/android/gms/internal/measurement/zzy;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->e()Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g4;->g()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->w0:Lcom/google/android/gms/measurement/internal/u2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->s()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "consent_source"

    const/16 v5, 0x64

    .line 6
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v6, Lcom/google/android/gms/measurement/internal/v2;->x0:Lcom/google/android/gms/measurement/internal/u2;

    .line 7
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v4

    const/16 v7, 0x28

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    .line 9
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    const-string v8, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    .line 11
    invoke-virtual {v8, v2, v6}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    const-string v6, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/e;->w(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    :goto_1
    const/16 v8, 0x14

    if-nez v4, :cond_2

    if-eqz v6, :cond_3

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/v3;->r(I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance p1, Lcom/google/android/gms/measurement/internal/f;

    .line 14
    invoke-direct {p1, v4, v6}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/16 v5, 0x14

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_4

    if-ne v3, v7, :cond_5

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/f;->c:Lcom/google/android/gms/measurement/internal/f;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    .line 17
    invoke-virtual {p1, v3, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/l6;->O(Lcom/google/android/gms/measurement/internal/f;IJ)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/v3;->r(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/f;->c:Lcom/google/android/gms/measurement/internal/f;

    .line 21
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v5, 0x28

    goto :goto_3

    :cond_6
    :goto_2
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    invoke-virtual {v0, p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/l6;->O(Lcom/google/android/gms/measurement/internal/f;IJ)V

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 23
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/v3;->r(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzy;->zzg:Landroid/os/Bundle;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/f;->c:Lcom/google/android/gms/measurement/internal/f;

    .line 27
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    .line 29
    invoke-virtual {v0, p1, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/l6;->O(Lcom/google/android/gms/measurement/internal/f;IJ)V

    :goto_4
    move-object v0, p1

    .line 30
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l6;->P(Lcom/google/android/gms/measurement/internal/f;)V

    .line 31
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->e:Lcom/google/android/gms/measurement/internal/s3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s3;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->e:Lcom/google/android/gms/measurement/internal/s3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->n:Lcom/google/android/gms/common/util/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s3;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-nez p1, :cond_b

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->v()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "Persisting first open"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->j:Lcom/google/android/gms/measurement/internal/s3;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    .line 37
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l6;->n:Lcom/google/android/gms/measurement/internal/n9;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n9;->c()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->p()Z

    move-result p1

    if-nez p1, :cond_10

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h9;->D(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 42
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h9;->D(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lyv;->a(Landroid/content/Context;)Lxv;

    move-result-object p1

    invoke-virtual {p1}, Lxv;->f()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->E()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b4;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/h9;->C(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 50
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 51
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a3;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 53
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "gmp_app_id"

    .line 56
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a3;->q()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "admob_app_id"

    .line 59
    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {p1, v0, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/h9;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 63
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 64
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_12

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/v3;->p(Ljava/lang/Boolean;)V

    .line 67
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->G()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c3;->n()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/z7;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z7;->s()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->u:Lcom/google/android/gms/measurement/internal/z7;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z7;->o()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->j:Lcom/google/android/gms/measurement/internal/s3;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/j4;->H:J

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/measurement/internal/s3;->b(J)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->l:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    .line 72
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 74
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a3;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->o()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 78
    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 81
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v3;->s()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result p1

    if-nez p1, :cond_15

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->l:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    .line 84
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->l:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u3;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l6;->q(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzll;->zzb()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v0, Lcom/google/android/gms/measurement/internal/v2;->o0:Lcom/google/android/gms/measurement/internal/u2;

    .line 86
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->E()Lcom/google/android/gms/measurement/internal/h9;

    move-result-object p1

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/j4;->a:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/u3;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->y:Lcom/google/android/gms/measurement/internal/u3;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/u3;->b(Ljava/lang/String;)V

    .line 93
    :cond_16
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a3;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->d()Lcom/google/android/gms/measurement/internal/a3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a3;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 95
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->j()Z

    move-result p1

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/v3;->u()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->x()Z

    move-result v0

    if-nez v0, :cond_18

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v3;->t(Z)V

    :cond_18
    if-eqz p1, :cond_19

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->D()Lcom/google/android/gms/measurement/internal/l6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l6;->t()V

    .line 100
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->A()Lcom/google/android/gms/measurement/internal/o8;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o8;->d:Lcom/google/android/gms/measurement/internal/n8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n8;->a()V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z7;->S(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->P()Lcom/google/android/gms/measurement/internal/z7;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/v3;->B:Lcom/google/android/gms/measurement/internal/r3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r3;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z7;->n(Landroid/os/Bundle;)V

    .line 104
    :cond_1a
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j4;->y()Lcom/google/android/gms/measurement/internal/v3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/v3;->s:Lcom/google/android/gms/measurement/internal/q3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v1, Lcom/google/android/gms/measurement/internal/v2;->X:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/u2;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/q3;->b(Z)V

    return-void
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/e;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->g:Lcom/google/android/gms/measurement/internal/e;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/v3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/v3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j4;->t(Lcom/google/android/gms/measurement/internal/d5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->h:Lcom/google/android/gms/measurement/internal/v3;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/measurement/internal/i3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/i3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e5;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->i:Lcom/google/android/gms/measurement/internal/i3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzas()Lcom/google/android/gms/measurement/internal/u9;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->f:Lcom/google/android/gms/measurement/internal/u9;

    return-object v0
.end method
