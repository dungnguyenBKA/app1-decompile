.class Laq;
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
    iput-object p1, p0, Laq;->a:Lyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lyp;->d()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4
    iget-object p1, p0, Laq;->a:Lyp;

    invoke-static {p1}, Lyp;->e(Lyp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lrq;->m(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object p1, p0, Laq;->a:Lyp;

    invoke-static {p1}, Lyp;->f(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c(ILjava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object p1

    const-string v0, "CutoutBg/"

    .line 2
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error_Store_Package"

    .line 4
    invoke-static {p1, v0, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Laq;->a:Lyp;

    invoke-static {p1}, Lyp;->f(Lyp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Laq;->a:Lyp;

    invoke-static {p1}, Lyp;->b(Lyp;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
