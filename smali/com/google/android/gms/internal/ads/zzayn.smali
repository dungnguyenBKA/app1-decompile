.class public final Lcom/google/android/gms/internal/ads/zzayn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzbqg:Lcom/google/android/gms/common/util/d;

.field private final zzdup:Ljava/lang/String;

.field private zzdvy:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzdwc:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzebw:Lcom/google/android/gms/internal/ads/zzayy;

.field private final zzebx:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzaym;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzeby:Ljava/lang/String;

.field private zzebz:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzeca:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzecb:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzecc:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzecd:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/d;Lcom/google/android/gms/internal/ads/zzayy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzdwc:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebz:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzdvy:Z

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzeca:J

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecb:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecc:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzbqg:Lcom/google/android/gms/common/util/d;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzeby:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzdup:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebx:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/common/util/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzbqg:Lcom/google/android/gms/common/util/d;

    return-object p0
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzeby:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzdup:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    .line 6
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecc:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    .line 7
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    .line 8
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebz:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    .line 9
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzeca:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    .line 10
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecb:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    .line 11
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzdwc:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaym;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaym;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "tclick"

    .line 15
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final zzao(Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzbqg:Lcom/google/android/gms/common/util/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzeca:J

    .line 4
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzvl;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzbqg:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecc:J

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzayy;->zza(Lcom/google/android/gms/internal/ads/zzvl;J)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzey(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzayy;->zzb(Lcom/google/android/gms/internal/ads/zzayn;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzxi()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebz:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzbqg:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebz:J

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzayy;->zzb(Lcom/google/android/gms/internal/ads/zzayn;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayy;->zzxi()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxj()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaym;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Lcom/google/android/gms/internal/ads/zzayn;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaym;->zzxh()V

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebx:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecb:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecb:J

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayy;->zzxj()V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzayy;->zzb(Lcom/google/android/gms/internal/ads/zzayn;)V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxk()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzecd:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebx:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebx:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaym;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaym;->zzxf()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaym;->zzxg()V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzebw:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzayy;->zzb(Lcom/google/android/gms/internal/ads/zzayn;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzeby:Ljava/lang/String;

    return-object v0
.end method
