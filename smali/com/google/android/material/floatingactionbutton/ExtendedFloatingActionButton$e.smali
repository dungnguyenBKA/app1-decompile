.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;
.super Lcom/google/android/material/floatingactionbutton/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private final g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

.field private final h:Z

.field final synthetic i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/b;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    .line 4
    iput-boolean p4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->h:Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f020007

    return v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->h:Z

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->h:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/widget/Button;->measure(II)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->h:Z

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/b;->e()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public f()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->i()Lpx;

    move-result-object v0

    const-string v1, "width"

    .line 2
    invoke-virtual {v0, v1}, Lpx;->h(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lpx;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 4
    aget-object v6, v2, v5

    new-array v7, v4, [F

    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v8}, Landroid/widget/Button;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lpx;->i(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    const-string v1, "height"

    .line 6
    invoke-virtual {v0, v1}, Lpx;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lpx;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 8
    aget-object v6, v2, v5

    new-array v4, v4, [F

    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v7}, Landroid/widget/Button;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v4, v5

    iget-object v5, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;

    invoke-interface {v5}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    invoke-virtual {v6, v4}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 9
    invoke-virtual {v0, v1, v2}, Lpx;->i(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/b;->h(Lpx;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/b;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->h:Z

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 3
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    return-void
.end method
