.class Lcom/zjsoft/funnyad/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/funnyad/a;->f(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zjsoft/funnyad/a;


# direct methods
.method constructor <init>(Lcom/zjsoft/funnyad/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/funnyad/a$a;->a:Lcom/zjsoft/funnyad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/zjsoft/funnyad/a$a;->a:Lcom/zjsoft/funnyad/a;

    .line 2
    iget-object p1, p1, Lcom/zjsoft/funnyad/a;->e:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080050

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a    # 1.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f99999a    # 1.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0x9c4

    .line 5
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v9, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
