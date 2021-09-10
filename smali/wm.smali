.class public Lwm;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lzm$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwm$d;
    }
.end annotation


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lzm;

.field private e:Lwm$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lwm$d;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lwm;->c:Z

    .line 3
    iput-object p3, p0, Lwm;->e:Lwm$d;

    .line 4
    iput-boolean p4, p0, Lwm;->c:Z

    .line 5
    new-instance p3, Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lwm;->b:Landroid/os/Handler;

    const-string p1, "image/*"

    .line 6
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ldn;

    invoke-direct {p1}, Ldn;-><init>()V

    iput-object p1, p0, Lwm;->d:Lzm;

    :cond_1
    return-void
.end method

.method static synthetic a(Lwm;)Lwm$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lwm;->e:Lwm$d;

    return-object p0
.end method


# virtual methods
.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwm;->e:Lwm$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwm;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lwm$c;

    invoke-direct {v1, p0, p1}, Lwm$c;-><init>(Lwm;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "BrowseMediaLibraryThread"

    const-string v1, "start browse media library thread"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lwm;->d:Lzm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwm;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lwm;->e:Lwm$d;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lwm$a;

    invoke-direct {v1, p0}, Lwm$a;-><init>(Lwm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lwm;->d:Lzm;

    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lwm;->c:Z

    check-cast v0, Ldn;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v3, v2}, Ldn;->a(Landroid/content/Context;Lzm$a;Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 7
    :goto_0
    iget-object v0, p0, Lwm;->e:Lwm$d;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lwm;->b:Landroid/os/Handler;

    new-instance v1, Lwm$b;

    invoke-direct {v1, p0, v3}, Lwm$b;-><init>(Lwm;Ljava/util/TreeMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
