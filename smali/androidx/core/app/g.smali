.class public Landroidx/core/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/e;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/e;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/app/PendingIntent;

.field g:I

.field h:Z

.field i:Landroidx/core/app/h;

.field j:Z

.field k:Landroid/os/Bundle;

.field l:Ljava/lang/String;

.field m:Z

.field n:Landroid/app/Notification;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/core/app/g;->h:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/core/app/g;->j:Z

    .line 6
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    .line 7
    iput-object p1, p0, Landroidx/core/app/g;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Landroidx/core/app/g;->l:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 10
    iget-object p1, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 11
    iput v1, p0, Landroidx/core/app/g;->g:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/g;->o:Ljava/util/ArrayList;

    .line 13
    iput-boolean v0, p0, Landroidx/core/app/g;->m:Z

    return-void
.end method

.method protected static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/app/i;

    invoke-direct {v0, p0}, Landroidx/core/app/i;-><init>(Landroidx/core/app/g;)V

    invoke-virtual {v0}, Landroidx/core/app/i;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Landroidx/core/app/g;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    const/16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    const/16 v1, -0x11

    and-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    :goto_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/core/app/g;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/g;->l:Ljava/lang/String;

    return-object p0
.end method

.method public e(Landroid/app/PendingIntent;)Landroidx/core/app/g;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/g;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Landroidx/core/app/g;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/g;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Landroidx/core/app/g;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/g;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(Landroid/app/PendingIntent;)Landroidx/core/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public i(Z)Landroidx/core/app/g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/g;->j:Z

    return-object p0
.end method

.method public j(I)Landroidx/core/app/g;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/g;->g:I

    return-object p0
.end method

.method public k(I)Landroidx/core/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public l(Landroidx/core/app/h;)Landroidx/core/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/g;->i:Landroidx/core/app/h;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/core/app/g;->i:Landroidx/core/app/h;

    .line 3
    iget-object v0, p1, Landroidx/core/app/h;->a:Landroidx/core/app/g;

    if-eq v0, p0, :cond_0

    .line 4
    iput-object p0, p1, Landroidx/core/app/h;->a:Landroidx/core/app/g;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/core/app/g;->l(Landroidx/core/app/h;)Landroidx/core/app/g;

    :cond_0
    return-object p0
.end method

.method public m(Ljava/lang/CharSequence;)Landroidx/core/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/g;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public n(J)Landroidx/core/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/g;->n:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
