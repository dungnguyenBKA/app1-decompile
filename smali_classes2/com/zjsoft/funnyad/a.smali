.class public Lcom/zjsoft/funnyad/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjsoft/funnyad/a$d;,
        Lcom/zjsoft/funnyad/a$f;,
        Lcom/zjsoft/funnyad/a$e;,
        Lcom/zjsoft/funnyad/a$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/zjsoft/funnyad/a$d;

.field b:Landroidx/appcompat/widget/ParticlesView;

.field c:Lsc0;

.field d:Landroid/app/Activity;

.field e:Landroid/view/View;

.field f:Lpb0;

.field g:Lob0;

.field private h:Lcom/zjsoft/funnyad/a$c;

.field private i:Lcom/zjsoft/funnyad/a$e;

.field j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/zjsoft/funnyad/a$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/zjsoft/funnyad/a$d;

    invoke-direct {v0, p0}, Lcom/zjsoft/funnyad/a$d;-><init>(Lcom/zjsoft/funnyad/a;)V

    iput-object v0, p0, Lcom/zjsoft/funnyad/a;->a:Lcom/zjsoft/funnyad/a$d;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zjsoft/funnyad/a;->j:Z

    .line 4
    iput-object p1, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/zjsoft/funnyad/a;->h:Lcom/zjsoft/funnyad/a$c;

    return-void
.end method

.method static synthetic a(Lcom/zjsoft/funnyad/a;)Lcom/zjsoft/funnyad/a$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zjsoft/funnyad/a;->i:Lcom/zjsoft/funnyad/a$e;

    return-object p0
.end method

.method static b(Lcom/zjsoft/funnyad/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->i:Lcom/zjsoft/funnyad/a$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/zjsoft/funnyad/a$e;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/zjsoft/funnyad/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lcom/zjsoft/funnyad/R$id;->close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/zjsoft/funnyad/a;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    new-instance v1, Lcom/zjsoft/funnyad/a$b;

    invoke-direct {v1, p0}, Lcom/zjsoft/funnyad/a$b;-><init>(Lcom/zjsoft/funnyad/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/animation/Animator;

    new-array v5, v3, [F

    .line 12
    fill-array-data v5, :array_0

    const-string v6, "scaleX"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    .line 13
    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    const-string v5, "alpha"

    .line 14
    invoke-static {v0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v2

    .line 15
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 17
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->f:Lpb0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lpb0;->g(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->g:Lob0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lob0;->j(Landroid/app/Activity;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ParticlesView;->e()V

    .line 9
    iput-object v0, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    .line 10
    :cond_3
    iput-object v0, p0, Lcom/zjsoft/funnyad/a;->i:Lcom/zjsoft/funnyad/a$e;

    .line 11
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/widget/ParticlesView;->e()V

    .line 13
    iput-object v0, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    :cond_4
    return-void
.end method

.method public d(Landroid/widget/FrameLayout;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p2, p0, Lcom/zjsoft/funnyad/a;->j:Z

    .line 3
    iget-object p2, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b005f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    int-to-float v4, v3

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0, v4}, Landroidx/core/app/b;->v(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    :goto_0
    float-to-int v0, v4

    const/high16 v4, -0x40800000    # -1.0f

    float-to-int v4, v4

    .line 8
    invoke-direct {v1, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    const p2, 0x7f080113

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ParticlesView;

    iput-object p1, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    .line 11
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->h:Lcom/zjsoft/funnyad/a$c;

    invoke-interface {p1}, Lcom/zjsoft/funnyad/a$c;->d()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-static {v5}, Landroidx/core/app/b;->z0(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-static {v6}, Landroidx/core/app/b;->y0(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    new-instance v5, Lpc0;

    iget-object v6, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lpc0;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v6, Lsc0;

    iget-object v7, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-direct {v6, v7, v5}, Lsc0;-><init>(Landroid/content/Context;Lmc0;)V

    iput-object v6, p0, Lcom/zjsoft/funnyad/a;->c:Lsc0;

    .line 18
    new-instance v6, Lnc0;

    iget-object v7, p0, Lcom/zjsoft/funnyad/a;->c:Lsc0;

    invoke-direct {v6, v7, v4, v1}, Lnc0;-><init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 19
    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 20
    invoke-virtual {v6, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 21
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v6, Lrc0;

    iget-object v7, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    invoke-direct {v6, v7, v5}, Lrc0;-><init>(Landroid/content/Context;Lmc0;)V

    .line 23
    new-instance v5, Lnc0;

    invoke-direct {v5, v6, v4, v1}, Lnc0;-><init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 24
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 25
    invoke-virtual {v5, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 26
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ParticlesView;->b(Ljava/util/List;)V

    goto :goto_1

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->h:Lcom/zjsoft/funnyad/a$c;

    invoke-interface {v0}, Lcom/zjsoft/funnyad/a$c;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ParticlesView;->b(Ljava/util/List;)V

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->b:Landroidx/appcompat/widget/ParticlesView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ParticlesView;->d()V

    .line 30
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->a:Lcom/zjsoft/funnyad/a$d;

    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->h:Lcom/zjsoft/funnyad/a$c;

    invoke-interface {v0}, Lcom/zjsoft/funnyad/a$c;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 31
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-static {p1}, Lcc0;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 35
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "funny_ads_type"

    .line 36
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 37
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    if-nez v2, :cond_5

    .line 38
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->f:Lpb0;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    if-nez p1, :cond_4

    goto :goto_3

    .line 39
    :cond_4
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object p2, p0, Lcom/zjsoft/funnyad/a;->d:Landroid/app/Activity;

    const-string v0, "FunnyAds loadCardAd"

    invoke-virtual {p1, p2, v0}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->h:Lcom/zjsoft/funnyad/a$c;

    new-instance p2, Lcom/zjsoft/funnyad/b;

    invoke-direct {p2, p0}, Lcom/zjsoft/funnyad/b;-><init>(Lcom/zjsoft/funnyad/a;)V

    invoke-interface {p1, p2}, Lcom/zjsoft/funnyad/a$c;->c(Lcom/zjsoft/funnyad/a$f;)V

    goto :goto_3

    .line 41
    :cond_5
    iget-object p2, p0, Lcom/zjsoft/funnyad/a;->g:Lob0;

    if-nez p2, :cond_7

    if-nez p1, :cond_6

    goto :goto_3

    .line 42
    :cond_6
    iget-object p2, p0, Lcom/zjsoft/funnyad/a;->h:Lcom/zjsoft/funnyad/a$c;

    new-instance v0, Lcom/zjsoft/funnyad/c;

    invoke-direct {v0, p0, p1}, Lcom/zjsoft/funnyad/c;-><init>(Lcom/zjsoft/funnyad/a;Landroid/app/Activity;)V

    invoke-interface {p2, v0}, Lcom/zjsoft/funnyad/a$c;->b(Lcom/zjsoft/funnyad/a$f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lcom/zjsoft/funnyad/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/funnyad/a;->i:Lcom/zjsoft/funnyad/a$e;

    return-void
.end method

.method public f(Landroid/view/View;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zjsoft/funnyad/a;->a:Lcom/zjsoft/funnyad/a$d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    const v2, 0x7f080050

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 8
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f99999a    # 1.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f99999a    # 1.2f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x32

    .line 9
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 11
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 12
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 15
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    aget v5, v5, v3

    add-int/2addr v0, v5

    neg-int v0, v0

    const-string v5, "alpha"

    new-array v6, v4, [F

    const/4 v7, 0x0

    aput v7, v6, v1

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v3

    .line 17
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const-string v6, "translationY"

    new-array v4, v4, [F

    int-to-float v0, v0

    aput v0, v4, v1

    aput v7, v4, v3

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v4, 0x12c

    .line 18
    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 19
    new-instance v0, Lx3;

    invoke-direct {v0}, Lx3;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance v0, Lcom/zjsoft/funnyad/a$a;

    invoke-direct {v0, p0}, Lcom/zjsoft/funnyad/a$a;-><init>(Lcom/zjsoft/funnyad/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 22
    invoke-direct {p0}, Lcom/zjsoft/funnyad/a;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
