.class final Loi0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final b:Lek0;

.field private c:Z

.field final synthetic d:Loi0;


# direct methods
.method constructor <init>(Loi0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Loi0$c;->d:Loi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lek0;

    iget-object p1, p1, Loi0;->d:Lyj0;

    invoke-interface {p1}, Lqk0;->timeout()Lsk0;

    move-result-object p1

    invoke-direct {v0, p1}, Lek0;-><init>(Lsk0;)V

    iput-object v0, p0, Loi0$c;->b:Lek0;

    return-void
.end method


# virtual methods
.method public H(Lxj0;J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Loi0$c;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Loi0$c;->d:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    invoke-interface {v0, p2, p3}, Lyj0;->J(J)Lyj0;

    .line 3
    iget-object v0, p0, Loi0$c;->d:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    .line 4
    iget-object v0, p0, Loi0$c;->d:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    invoke-interface {v0, p1, p2, p3}, Lqk0;->H(Lxj0;J)V

    .line 5
    iget-object p1, p0, Loi0$c;->d:Loi0;

    iget-object p1, p1, Loi0;->d:Lyj0;

    invoke-interface {p1, v1}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Loi0$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Loi0$c;->c:Z

    .line 3
    iget-object v0, p0, Loi0$c;->d:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lyj0;->C(Ljava/lang/String;)Lyj0;

    .line 4
    iget-object v0, p0, Loi0$c;->d:Loi0;

    iget-object v1, p0, Loi0$c;->b:Lek0;

    invoke-virtual {v0, v1}, Loi0;->g(Lek0;)V

    .line 5
    iget-object v0, p0, Loi0$c;->d:Loi0;

    const/4 v1, 0x3

    iput v1, v0, Loi0;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Loi0$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Loi0$c;->d:Loi0;

    iget-object v0, v0, Loi0;->d:Lyj0;

    invoke-interface {v0}, Lyj0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Loi0$c;->b:Lek0;

    return-object v0
.end method
