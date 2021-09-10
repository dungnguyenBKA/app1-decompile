.class final Lxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lkw;

.field private final synthetic c:Lww;


# direct methods
.method constructor <init>(Lww;Lkw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxw;->c:Lww;

    iput-object p2, p0, Lxw;->b:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lxw;->c:Lww;

    invoke-static {v0}, Lww;->b(Lww;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lxw;->c:Lww;

    invoke-static {v1}, Lww;->c(Lww;)Lhw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lxw;->c:Lww;

    invoke-static {v1}, Lww;->c(Lww;)Lhw;

    move-result-object v1

    iget-object v2, p0, Lxw;->b:Lkw;

    invoke-virtual {v2}, Lkw;->j()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lhw;->onSuccess(Ljava/lang/Object;)V

    .line 4
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
