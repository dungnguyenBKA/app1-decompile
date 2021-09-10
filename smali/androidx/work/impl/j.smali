.class Landroidx/work/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ll6;

.field final synthetic c:Landroidx/work/impl/l;


# direct methods
.method constructor <init>(Landroidx/work/impl/l;Ll6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/l;

    iput-object p2, p0, Landroidx/work/impl/j;->b:Ll6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/l;

    iget-object v4, v4, Landroidx/work/impl/l;->f:Lc6;

    iget-object v4, v4, Lc6;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/l;

    iget-object v1, v0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Luy;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/l;->r:Luy;

    .line 3
    iget-object v0, p0, Landroidx/work/impl/j;->b:Ll6;

    iget-object v1, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/l;

    iget-object v1, v1, Landroidx/work/impl/l;->r:Luy;

    invoke-virtual {v0, v1}, Ll6;->l(Luy;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Landroidx/work/impl/j;->b:Ll6;

    invoke-virtual {v1, v0}, Ll6;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
