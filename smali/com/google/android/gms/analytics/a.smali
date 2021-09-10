.class public final Lcom/google/android/gms/analytics/a;
.super Lcom/google/android/gms/analytics/c;
.source "SourceFile"


# static fields
.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/a;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/c;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance p1, Ljava/util/HashSet;

    .line 2
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public static h()V
    .locals 3

    const-class v0, Lcom/google/android/gms/analytics/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/a;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/analytics/a;->h:Ljava/util/List;

    .line 3
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/a;->g:Z

    return v0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->b()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzq()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzf()Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzc()Z

    move-result v1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/a;->g:Z

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzf()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/a;->f:Z

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
