.class Landroidx/appcompat/widget/a0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/StarCheckView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/StarCheckView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/StarCheckView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/widget/StarCheckView;->a(Landroidx/appcompat/widget/StarCheckView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
