.class Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/fragment/app/h;


# direct methods
.method constructor <init>(Landroidx/fragment/app/h;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/h;

    iput-object p2, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    new-instance v0, Landroidx/fragment/app/i$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/i$a;-><init>(Landroidx/fragment/app/i;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
