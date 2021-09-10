.class Landroidx/appcompat/widget/c0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/StarCheckView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/StarCheckView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-static {v0}, Landroidx/appcompat/widget/StarCheckView;->c(Landroidx/appcompat/widget/StarCheckView;)Landroidx/appcompat/widget/StarCheckView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-static {v0}, Landroidx/appcompat/widget/StarCheckView;->c(Landroidx/appcompat/widget/StarCheckView;)Landroidx/appcompat/widget/StarCheckView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/StarCheckView$a;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/c0;->a:Landroidx/appcompat/widget/StarCheckView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/widget/StarCheckView;->d(Landroidx/appcompat/widget/StarCheckView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
