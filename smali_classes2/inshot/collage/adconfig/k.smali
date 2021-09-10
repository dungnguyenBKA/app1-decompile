.class public final Linshot/collage/adconfig/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/zjsoft/funnyad/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnc0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    return-void
.end method

.method public static final a(Linshot/collage/adconfig/k;)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgg0;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    invoke-static {p0}, Lgg0;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    .line 6
    iget-object v3, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    .line 7
    invoke-static {v3}, Landroidx/core/app/b;->z0(Landroid/content/Context;)I

    move-result v3

    .line 8
    iget-object v4, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    invoke-static {v4}, Landroidx/core/app/b;->y0(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    .line 9
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    new-instance v3, Lpc0;

    iget-object v4, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lpc0;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v4, Lsc0;

    iget-object v5, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    invoke-direct {v4, v5, v3}, Lsc0;-><init>(Landroid/content/Context;Lmc0;)V

    .line 12
    new-instance v5, Lnc0;

    invoke-direct {v5, v4, v2, v0}, Lnc0;-><init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v4, -0x1

    .line 13
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 14
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 15
    iget-object v6, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    if-eqz v6, :cond_1

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    new-instance v5, Lrc0;

    .line 17
    iget-object v6, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    .line 18
    invoke-direct {v5, v6, v3}, Lrc0;-><init>(Landroid/content/Context;Lmc0;)V

    .line 19
    new-instance v3, Lnc0;

    invoke-direct {v3, v5, v2, v0}, Lnc0;-><init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 20
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 21
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 22
    iget-object v0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    iget-object p0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    invoke-static {p0}, Lgg0;->c(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static final synthetic b(Linshot/collage/adconfig/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Linshot/collage/adconfig/k;->c:Z

    return p0
.end method

.method public static final synthetic c(Linshot/collage/adconfig/k;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic d(Linshot/collage/adconfig/k;)Lcom/zjsoft/funnyad/a;
    .locals 0

    .line 1
    iget-object p0, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;

    return-object p0
.end method

.method public static final synthetic e(Linshot/collage/adconfig/k;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Linshot/collage/adconfig/k;->c:Z

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnc0;

    .line 3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    invoke-virtual {v1}, Lnc0;->a()V

    .line 5
    invoke-virtual {v1}, Lnc0;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Linshot/collage/adconfig/k;->b:Ljava/util/List;

    .line 7
    iget-object v1, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/zjsoft/funnyad/a;->c(Landroid/app/Activity;)V

    .line 8
    :cond_1
    iput-object v0, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Linshot/collage/adconfig/k;->c:Z

    return v0
.end method

.method public final h(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/ads/ADRequestList;

    invoke-direct {v0}, Lcom/google/ads/ADRequestList;-><init>()V

    .line 3
    new-instance v1, Linshot/collage/adconfig/k$a;

    invoke-direct {v1, p0}, Linshot/collage/adconfig/k$a;-><init>(Linshot/collage/adconfig/k;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/ADRequestList;->setADListener(Lsb0;)V

    .line 4
    new-instance v1, Lcom/zjsoft/funnyad/a;

    iget-object v2, p0, Linshot/collage/adconfig/k;->d:Landroid/app/Activity;

    new-instance v3, Linshot/collage/adconfig/k$b;

    invoke-direct {v3, p0, v0}, Linshot/collage/adconfig/k$b;-><init>(Linshot/collage/adconfig/k;Lcom/google/ads/ADRequestList;)V

    invoke-direct {v1, v2, v3}, Lcom/zjsoft/funnyad/a;-><init>(Landroid/app/Activity;Lcom/zjsoft/funnyad/a$c;)V

    iput-object v1, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;

    .line 5
    :cond_0
    iget-object v0, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;

    invoke-static {v0}, Lgg0;->c(Ljava/lang/Object;)V

    new-instance v1, Linshot/collage/adconfig/k$c;

    invoke-direct {v1, p0}, Linshot/collage/adconfig/k$c;-><init>(Linshot/collage/adconfig/k;)V

    invoke-virtual {v0, v1}, Lcom/zjsoft/funnyad/a;->e(Lcom/zjsoft/funnyad/a$e;)V

    .line 6
    iget-object v0, p0, Linshot/collage/adconfig/k;->a:Lcom/zjsoft/funnyad/a;

    invoke-static {v0}, Lgg0;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zjsoft/funnyad/a;->d(Landroid/widget/FrameLayout;Z)V

    return-void
.end method
