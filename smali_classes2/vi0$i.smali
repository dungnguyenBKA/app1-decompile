.class final Lvi0$i;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field final synthetic c:Lvi0;


# direct methods
.method constructor <init>(Lvi0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lvi0$i;->c:Lvi0;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lvi0;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lvi0$i;->c:Lvi0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lvi0$i;->c:Lvi0;

    invoke-static {v1}, Lvi0;->o(Lvi0;)J

    move-result-wide v1

    iget-object v3, p0, Lvi0$i;->c:Lvi0;

    invoke-static {v3}, Lvi0;->S(Lvi0;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lvi0$i;->c:Lvi0;

    invoke-static {v1}, Lvi0;->V(Lvi0;)J

    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lvi0$i;->c:Lvi0;

    invoke-static {v0}, Lvi0;->j(Lvi0;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lvi0$i;->c:Lvi0;

    invoke-virtual {v0, v6, v5, v6}, Lvi0;->E0(ZII)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
