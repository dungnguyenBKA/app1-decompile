.class Lxd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:Ldk;

.field final synthetic c:Lxd;


# direct methods
.method constructor <init>(Lxd;Ldk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxd$b;->c:Lxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lxd$b;->b:Ldk;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxd$b;->b:Ldk;

    check-cast v0, Lek;

    invoke-virtual {v0}, Lek;->f()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lxd$b;->c:Lxd;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget-object v2, p0, Lxd$b;->c:Lxd;

    iget-object v2, v2, Lxd;->b:Lxd$e;

    iget-object v3, p0, Lxd$b;->b:Ldk;

    invoke-virtual {v2, v3}, Lxd$e;->b(Ldk;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lxd$b;->c:Lxd;

    iget-object v2, v2, Lxd;->w:Lbe;

    invoke-virtual {v2}, Lbe;->b()V

    .line 5
    iget-object v2, p0, Lxd$b;->c:Lxd;

    iget-object v3, p0, Lxd$b;->b:Ldk;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget-object v4, v2, Lxd;->w:Lbe;

    iget-object v2, v2, Lxd;->s:Lcom/bumptech/glide/load/a;

    check-cast v3, Lek;

    invoke-virtual {v3, v4, v2}, Lek;->n(Lhe;Lcom/bumptech/glide/load/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    iget-object v2, p0, Lxd$b;->c:Lxd;

    iget-object v3, p0, Lxd$b;->b:Ldk;

    invoke-virtual {v2, v3}, Lxd;->k(Ldk;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    new-instance v3, Lnd;

    invoke-direct {v3, v2}, Lnd;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 10
    :cond_0
    :goto_0
    iget-object v2, p0, Lxd$b;->c:Lxd;

    invoke-virtual {v2}, Lxd;->c()V

    .line 11
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 13
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
