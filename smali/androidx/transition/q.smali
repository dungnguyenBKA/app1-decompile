.class Landroidx/transition/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lx;

.field final synthetic b:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;Lx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/q;->b:Landroidx/transition/Transition;

    iput-object p2, p0, Landroidx/transition/q;->a:Lx;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->a:Lx;

    invoke-virtual {v0, p1}, Le0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/transition/q;->b:Landroidx/transition/Transition;

    iget-object v0, v0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/q;->b:Landroidx/transition/Transition;

    iget-object v0, v0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
