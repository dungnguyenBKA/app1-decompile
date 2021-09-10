.class Lh3$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh3;->g(Landroid/view/View;Li3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li3;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lh3;Li3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lh3$a;->a:Li3;

    iput-object p3, p0, Lh3$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh3$a;->a:Li3;

    iget-object v0, p0, Lh3$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Li3;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh3$a;->a:Li3;

    iget-object v0, p0, Lh3$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Li3;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh3$a;->a:Li3;

    iget-object v0, p0, Lh3$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Li3;->c(Landroid/view/View;)V

    return-void
.end method
