.class public Lqq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lqq;->b:J

    .line 3
    iput-object p1, p0, Lqq;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/AppCompatActivity;Z)Z
    .locals 6

    const-string v0, "AppExitUtils"

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lqq;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lqq;->b:J

    const p2, 0x7f0e0062

    .line 3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 6
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    const-class v1, Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Len;->a(Lwm$d;)Len;

    move-result-object p2

    invoke-virtual {p2, p1}, Len;->h(Lwm$d;)V

    .line 11
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c()V

    .line 12
    sget-boolean p1, Lcom/camerasideas/collagemaker/appdata/e;->a:Z

    const-string p1, "Back to MainActivity: destroy bitmaps and items"

    .line 13
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Back to home activity:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lqq;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lqq;->a:Landroid/content/Context;

    .line 3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lkq;

    invoke-direct {v2, v0}, Lkq;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    sget v0, Landroidx/core/app/a;->c:I

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lqq;->b:J

    const v0, 0x7f0e0062

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroidx/appcompat/app/AppCompatActivity;Z)Z
    .locals 6

    const-string v0, "AppExitUtils"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lqq;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lqq;->b:J

    const p2, 0x7f0e0062

    .line 3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 6
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    const-class v1, Lcom/camerasideas/collagemaker/activity/MainActivity;

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Len;->a(Lwm$d;)Len;

    move-result-object p2

    invoke-virtual {p2, p1}, Len;->h(Lwm$d;)V

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    const-string p1, "Image selector Back to MainActivity: destroy bitmaps and items"

    .line 12
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image selector Back to home activity:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
