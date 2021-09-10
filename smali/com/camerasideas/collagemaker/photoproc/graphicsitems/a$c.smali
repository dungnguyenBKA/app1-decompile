.class Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$c;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$c;->b:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 7

    const-string v0, "BaseAsyncTask"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2
    invoke-static {v2}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;

    move-result-object v0

    const/4 v2, 0x3

    new-instance v3, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$c;->b:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    invoke-direct {v3, v4, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    move-exception v2

    .line 5
    invoke-static {v2}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    .line 6
    invoke-static {v2}, Lc2;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;->a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$d;

    move-result-object v0

    new-instance v2, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$c;->b:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-direct {v2, v3, v5}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a$e;-><init>(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
