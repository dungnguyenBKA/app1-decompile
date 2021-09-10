.class Lzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom$a;


# instance fields
.field final synthetic a:Lyp;


# direct methods
.method constructor <init>(Lyp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzp;->a:Lyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "utf-8"

    .line 3
    invoke-static {v0, p1}, Landroidx/core/app/b;->q0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CloudStoreManager"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    const-string v2, "update_config.json"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9
    iget-object p1, p0, Lzp;->a:Lyp;

    invoke-static {p1}, Lyp;->b(Lyp;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lrq;->m(Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lzp;->a:Lyp;

    invoke-static {p1}, Lyp;->c(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lzp;->a:Lyp;

    invoke-static {p1}, Lyp;->c(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
