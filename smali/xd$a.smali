.class Lxd$a;
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
    name = "a"
.end annotation


# instance fields
.field private final b:Ldk;

.field final synthetic c:Lxd;


# direct methods
.method constructor <init>(Lxd;Ldk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxd$a;->c:Lxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lxd$a;->b:Ldk;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxd$a;->b:Ldk;

    check-cast v0, Lek;

    invoke-virtual {v0}, Lek;->f()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lxd$a;->c:Lxd;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget-object v2, p0, Lxd$a;->c:Lxd;

    iget-object v2, v2, Lxd;->b:Lxd$e;

    iget-object v3, p0, Lxd$a;->b:Ldk;

    invoke-virtual {v2, v3}, Lxd$e;->b(Ldk;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lxd$a;->c:Lxd;

    iget-object v3, p0, Lxd$a;->b:Ldk;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v2, v2, Lxd;->u:Lce;

    check-cast v3, Lek;

    invoke-virtual {v3, v2}, Lek;->l(Lce;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    :try_start_3
    new-instance v3, Lnd;

    invoke-direct {v3, v2}, Lnd;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 8
    :cond_0
    :goto_0
    iget-object v2, p0, Lxd$a;->c:Lxd;

    invoke-virtual {v2}, Lxd;->c()V

    .line 9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    .line 11
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
