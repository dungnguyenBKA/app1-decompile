.class Landroidx/appcompat/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/StarCheckView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/StarCheckView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/z;->a:Landroidx/appcompat/widget/StarCheckView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
