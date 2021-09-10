.class public Landroidx/appcompat/app/t;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/t$d;
    }
.end annotation


# static fields
.field private static final A:Landroid/view/animation/Interpolator;

.field private static final z:Landroid/view/animation/Interpolator;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field d:Landroidx/appcompat/widget/ActionBarContainer;

.field e:Landroidx/appcompat/widget/n;

.field f:Landroidx/appcompat/widget/ActionBarContextView;

.field g:Landroid/view/View;

.field private h:Z

.field i:Landroidx/appcompat/app/t$d;

.field j:Lk;

.field k:Lk$a;

.field private l:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:I

.field p:Z

.field q:Z

.field private r:Z

.field private s:Z

.field t:Lq;

.field private u:Z

.field v:Z

.field final w:Li3;

.field final x:Li3;

.field final y:Lk3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/t;->z:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/t;->A:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/t;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/app/t;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->p:Z

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->s:Z

    .line 7
    new-instance v0, Landroidx/appcompat/app/t$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/t$a;-><init>(Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/t;->w:Li3;

    .line 8
    new-instance v0, Landroidx/appcompat/app/t$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/t$b;-><init>(Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/t;->x:Li3;

    .line 9
    new-instance v0, Landroidx/appcompat/app/t$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/t$c;-><init>(Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/t;->y:Lk3;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/appcompat/app/t;->v(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/t;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/t;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/appcompat/app/t;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->p:Z

    .line 19
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->s:Z

    .line 20
    new-instance v0, Landroidx/appcompat/app/t$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/t$a;-><init>(Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/t;->w:Li3;

    .line 21
    new-instance v0, Landroidx/appcompat/app/t$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/t$b;-><init>(Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/t;->x:Li3;

    .line 22
    new-instance v0, Landroidx/appcompat/app/t$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/t$c;-><init>(Landroidx/appcompat/app/t;)V

    iput-object v0, p0, Landroidx/appcompat/app/t;->y:Lk3;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/t;->v(Landroid/view/View;)V

    return-void
.end method

.method private A(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->q:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/t;->r:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-wide/16 v4, 0xfa

    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_9

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->s:Z

    if-nez v0, :cond_f

    .line 3
    iput-boolean v2, p0, Landroidx/appcompat/app/t;->s:Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/t;->t:Lq;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lq;->a()V

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 7
    iget v0, p0, Landroidx/appcompat/app/t;->o:I

    const/4 v3, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/appcompat/app/t;->u:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_6

    .line 8
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    .line 10
    fill-array-data p1, :array_0

    .line 11
    iget-object v1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 12
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 13
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14
    new-instance p1, Lq;

    invoke-direct {p1}, Lq;-><init>()V

    .line 15
    iget-object v1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object v1

    invoke-virtual {v1, v3}, Lh3;->k(F)Lh3;

    .line 16
    iget-object v2, p0, Landroidx/appcompat/app/t;->y:Lk3;

    invoke-virtual {v1, v2}, Lh3;->i(Lk3;)Lh3;

    .line 17
    invoke-virtual {p1, v1}, Lq;->c(Lh3;)Lq;

    .line 18
    iget-boolean v1, p0, Landroidx/appcompat/app/t;->p:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/app/t;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    iget-object v0, p0, Landroidx/appcompat/app/t;->g:Landroid/view/View;

    invoke-static {v0}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lh3;->k(F)Lh3;

    invoke-virtual {p1, v0}, Lq;->c(Lh3;)Lq;

    .line 21
    :cond_5
    sget-object v0, Landroidx/appcompat/app/t;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lq;->f(Landroid/view/animation/Interpolator;)Lq;

    .line 22
    invoke-virtual {p1, v4, v5}, Lq;->e(J)Lq;

    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/t;->x:Li3;

    invoke-virtual {p1, v0}, Lq;->g(Li3;)Lq;

    .line 24
    iput-object p1, p0, Landroidx/appcompat/app/t;->t:Lq;

    .line 25
    invoke-virtual {p1}, Lq;->h()V

    goto :goto_2

    .line 26
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 27
    iget-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 28
    iget-boolean p1, p0, Landroidx/appcompat/app/t;->p:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/t;->g:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 30
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/app/t;->x:Li3;

    invoke-interface {p1, v7}, Li3;->b(Landroid/view/View;)V

    .line 31
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_f

    .line 32
    sget v0, Lc3;->g:I

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto/16 :goto_3

    .line 35
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    goto/16 :goto_3

    .line 36
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->s:Z

    if-eqz v0, :cond_f

    .line 37
    iput-boolean v3, p0, Landroidx/appcompat/app/t;->s:Z

    .line 38
    iget-object v0, p0, Landroidx/appcompat/app/t;->t:Lq;

    if-eqz v0, :cond_a

    .line 39
    invoke-virtual {v0}, Lq;->a()V

    .line 40
    :cond_a
    iget v0, p0, Landroidx/appcompat/app/t;->o:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroidx/appcompat/app/t;->u:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_e

    .line 41
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 42
    iget-object v0, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->f(Z)V

    .line 43
    new-instance v0, Lq;

    invoke-direct {v0}, Lq;-><init>()V

    .line 44
    iget-object v3, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_c

    new-array p1, v1, [I

    .line 45
    fill-array-data p1, :array_1

    .line 46
    iget-object v1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 47
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 48
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object p1

    invoke-virtual {p1, v3}, Lh3;->k(F)Lh3;

    .line 49
    iget-object v1, p0, Landroidx/appcompat/app/t;->y:Lk3;

    invoke-virtual {p1, v1}, Lh3;->i(Lk3;)Lh3;

    .line 50
    invoke-virtual {v0, p1}, Lq;->c(Lh3;)Lq;

    .line 51
    iget-boolean p1, p0, Landroidx/appcompat/app/t;->p:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/app/t;->g:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 52
    invoke-static {p1}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object p1

    invoke-virtual {p1, v3}, Lh3;->k(F)Lh3;

    invoke-virtual {v0, p1}, Lq;->c(Lh3;)Lq;

    .line 53
    :cond_d
    sget-object p1, Landroidx/appcompat/app/t;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lq;->f(Landroid/view/animation/Interpolator;)Lq;

    .line 54
    invoke-virtual {v0, v4, v5}, Lq;->e(J)Lq;

    .line 55
    iget-object p1, p0, Landroidx/appcompat/app/t;->w:Li3;

    invoke-virtual {v0, p1}, Lq;->g(Li3;)Lq;

    .line 56
    iput-object v0, p0, Landroidx/appcompat/app/t;->t:Lq;

    .line 57
    invoke-virtual {v0}, Lq;->h()V

    goto :goto_3

    .line 58
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/t;->w:Li3;

    invoke-interface {p1, v7}, Li3;->b(Landroid/view/View;)V

    :cond_f
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private v(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0800fe

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    const v0, 0x7f080032

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/appcompat/widget/n;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroidx/appcompat/widget/n;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_a

    .line 7
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->C()Landroidx/appcompat/widget/n;

    move-result-object v0

    .line 8
    :goto_0
    iput-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    const v0, 0x7f08003a

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f080034

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 11
    iget-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    .line 12
    invoke-interface {v0}, Landroidx/appcompat/widget/n;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1}, Landroidx/appcompat/widget/n;->u()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->h:Z

    .line 15
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    invoke-static {v2}, Lj;->b(Landroid/content/Context;)Lj;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lj;->a()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 17
    :goto_3
    iget-object v3, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {v3, p1}, Landroidx/appcompat/widget/n;->t(Z)V

    .line 18
    invoke-virtual {v2}, Lj;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/t;->y(Z)V

    .line 19
    iget-object p1, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->a:[I

    const v4, 0x7f030005

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v2, 0xe

    .line 20
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    iget-object v2, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->v:Z

    .line 23
    iget-object v2, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z(Z)V

    goto :goto_4

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    const/16 v0, 0xc

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_8

    int-to-float v0, v0

    .line 26
    iget-object v1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1, v0}, Lc3;->w(Landroid/view/View;F)V

    .line 27
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 28
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/appcompat/app/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    const-string v0, "null"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private y(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/t;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/n;->l(Landroidx/appcompat/widget/y;)V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->e(Landroidx/appcompat/widget/y;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->e(Landroidx/appcompat/widget/y;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/n;->l(Landroidx/appcompat/widget/y;)V

    .line 6
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1}, Landroidx/appcompat/widget/n;->p()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    iget-boolean v3, p0, Landroidx/appcompat/app/t;->n:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/n;->x(Z)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/t;->n:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y(Z)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/t;->l:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Landroidx/appcompat/app/t;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$a;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->u()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/t;->b:Landroid/content/Context;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/t;->b:Landroid/content/Context;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/t;->b:Landroid/content/Context;

    return-object v0
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    invoke-static {p1}, Lj;->b(Landroid/content/Context;)Lj;

    move-result-object p1

    invoke-virtual {p1}, Lj;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/t;->y(Z)V

    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->i:Landroidx/appcompat/app/t$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/t$d;->e()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 4
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 6
    check-cast v0, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->h:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/t;->n(Z)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {v1}, Landroidx/appcompat/widget/n;->u()I

    move-result v1

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p0, Landroidx/appcompat/app/t;->h:Z

    .line 3
    iget-object v2, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    and-int/2addr p1, v0

    const/4 v0, -0x5

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Landroidx/appcompat/widget/n;->n(I)V

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/t;->u:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/t;->t:Lq;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lq;->a()V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r(Lk$a;)Lk;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->i:Landroidx/appcompat/app/t$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/t$d;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z(Z)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    .line 5
    new-instance v0, Landroidx/appcompat/app/t$d;

    iget-object v1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/t$d;-><init>(Landroidx/appcompat/app/t;Landroid/content/Context;Lk$a;)V

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/t$d;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/t;->i:Landroidx/appcompat/app/t$d;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/t$d;->k()V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Lk;)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/t;->s(Z)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Landroidx/appcompat/app/t;->r:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/app/t;->r:Z

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A()V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/t;->A(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/app/t;->r:Z

    if-eqz v1, :cond_3

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->r:Z

    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A()V

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/t;->A(Z)V

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    sget v2, Lc3;->g:I

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1, v2, v4, v5}, Landroidx/appcompat/widget/n;->q(IJ)Lh3;

    move-result-object p1

    .line 15
    iget-object v1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->q(IJ)Lh3;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1, v0, v6, v7}, Landroidx/appcompat/widget/n;->q(IJ)Lh3;

    move-result-object v0

    .line 17
    iget-object p1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->q(IJ)Lh3;

    move-result-object p1

    .line 18
    :goto_1
    new-instance v1, Lq;

    invoke-direct {v1}, Lq;-><init>()V

    .line 19
    invoke-virtual {v1, p1, v0}, Lq;->d(Lh3;Lh3;)Lq;

    .line 20
    invoke-virtual {v1}, Lq;->h()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1, v2}, Landroidx/appcompat/widget/n;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 23
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/n;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/t;->p:Z

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->q:Z

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/app/t;->A(Z)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t;->t:Lq;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lq;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/app/t;->t:Lq;

    :cond_0
    return-void
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/t;->o:I

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/t;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/t;->q:Z

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/app/t;->A(Z)V

    :cond_0
    return-void
.end method
