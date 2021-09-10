.class Lw6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lcn/dreamtobe/kpswitch/b;

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private i:Z

.field private final j:Lw6$b;

.field private final k:I

.field private l:Z

.field private m:I


# direct methods
.method constructor <init>(ZZZLandroid/view/ViewGroup;Lcn/dreamtobe/kpswitch/b;Lw6$b;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lw6$a;->b:I

    .line 3
    iput-boolean v0, p0, Lw6$a;->l:Z

    .line 4
    iput-object p4, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    .line 5
    iput-object p5, p0, Lw6$a;->d:Lcn/dreamtobe/kpswitch/b;

    .line 6
    iput-boolean p1, p0, Lw6$a;->e:Z

    .line 7
    iput-boolean p2, p0, Lw6$a;->f:Z

    .line 8
    iput-boolean p3, p0, Lw6$a;->g:Z

    .line 9
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx6;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lw6$a;->h:I

    .line 10
    iput-object p6, p0, Lw6$a;->j:Lw6$b;

    .line 11
    iput p7, p0, Lw6$a;->k:I

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .line 1
    iget-object v0, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-boolean v4, p0, Lw6$a;->f:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 7
    iget-boolean v2, p0, Lw6$a;->l:Z

    if-nez v2, :cond_1

    .line 8
    iget v2, p0, Lw6$a;->k:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lw6$a;->l:Z

    .line 9
    :cond_1
    iget-boolean v2, p0, Lw6$a;->l:Z

    if-nez v2, :cond_3

    .line 10
    iget v2, p0, Lw6$a;->h:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 12
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 13
    :cond_3
    :goto_1
    iget v2, p0, Lw6$a;->b:I

    const-string v3, "KeyboardStatusListener"

    if-nez v2, :cond_4

    .line 14
    iput v0, p0, Lw6$a;->b:I

    .line 15
    iget-object v2, p0, Lw6$a;->d:Lcn/dreamtobe/kpswitch/b;

    invoke-direct {p0}, Lw6$a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lw6;->e(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v2, v4}, Lcn/dreamtobe/kpswitch/b;->d(I)V

    goto :goto_3

    .line 16
    :cond_4
    iget-boolean v2, p0, Lw6$a;->e:Z

    iget-boolean v4, p0, Lw6$a;->f:Z

    iget-boolean v6, p0, Lw6$a;->g:Z

    invoke-static {v2, v4, v6}, Lu6;->d(ZZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    iget-object v2, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_2

    .line 19
    :cond_5
    iget v2, p0, Lw6$a;->b:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 20
    :goto_2
    invoke-direct {p0}, Lw6$a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lw6;->d(Landroid/content/Context;)I

    move-result v4

    if-gt v2, v4, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    iget v4, p0, Lw6$a;->h:I

    if-ne v2, v4, :cond_7

    new-array v4, v5, [Ljava/lang/Object;

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v2, "On global layout change get keyboard height just equal statusBar height %d"

    .line 23
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 24
    :cond_7
    invoke-direct {p0}, Lw6$a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lw6;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 25
    invoke-direct {p0}, Lw6$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lw6;->e(Landroid/content/Context;)I

    move-result v2

    .line 26
    iget-object v4, p0, Lw6$a;->d:Lcn/dreamtobe/kpswitch/b;

    invoke-interface {v4}, Lcn/dreamtobe/kpswitch/b;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 27
    iget-object v4, p0, Lw6$a;->d:Lcn/dreamtobe/kpswitch/b;

    invoke-interface {v4, v2}, Lcn/dreamtobe/kpswitch/b;->d(I)V

    .line 28
    :cond_8
    :goto_3
    iget-object v2, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v4, v2

    .line 31
    iget-boolean v2, p0, Lw6$a;->e:Z

    iget-boolean v6, p0, Lw6$a;->f:Z

    iget-boolean v7, p0, Lw6$a;->g:Z

    invoke-static {v2, v6, v7}, Lu6;->d(ZZZ)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_b

    .line 32
    iget-boolean v2, p0, Lw6$a;->f:Z

    if-nez v2, :cond_9

    sub-int v2, v4, v0

    iget v3, p0, Lw6$a;->h:I

    if-ne v2, v3, :cond_9

    .line 33
    iget-boolean v2, p0, Lw6$a;->i:Z

    goto :goto_5

    :cond_9
    if-le v4, v0, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 34
    :cond_b
    iget-object v2, p0, Lw6$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    iget-boolean v7, p0, Lw6$a;->f:Z

    if-nez v7, :cond_c

    if-ne v2, v4, :cond_c

    new-array v6, v6, [Ljava/lang/Object;

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    const-string v1, "skip the keyboard status calculate, the current activity is paused. and phone-display-height %d, root-height+actionbar-height %d"

    .line 38
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 39
    :cond_c
    iget v2, p0, Lw6$a;->m:I

    if-nez v2, :cond_d

    .line 40
    iget-boolean v2, p0, Lw6$a;->i:Z

    goto :goto_4

    .line 41
    :cond_d
    invoke-direct {p0}, Lw6$a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lw6;->d(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    .line 42
    :goto_4
    iget v3, p0, Lw6$a;->m:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lw6$a;->m:I

    .line 43
    :goto_5
    iget-boolean v3, p0, Lw6$a;->i:Z

    if-eq v3, v2, :cond_f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "displayHeight %d actionBarOverlayLayoutHeight %d keyboard status change: %B"

    .line 45
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lw6$a;->d:Lcn/dreamtobe/kpswitch/b;

    invoke-interface {v1, v2}, Lcn/dreamtobe/kpswitch/b;->a(Z)V

    .line 47
    iget-object v1, p0, Lw6$a;->j:Lw6$b;

    if-eqz v1, :cond_f

    .line 48
    invoke-interface {v1, v2}, Lw6$b;->a(Z)V

    .line 49
    :cond_f
    iput-boolean v2, p0, Lw6$a;->i:Z

    .line 50
    :goto_6
    iput v0, p0, Lw6$a;->b:I

    return-void
.end method
