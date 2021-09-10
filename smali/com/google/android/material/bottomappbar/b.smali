.class Lcom/google/android/material/bottomappbar/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/b;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lcom/google/android/material/bottomappbar/b;->b:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lcom/google/android/material/bottomappbar/b;->c:I

    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/b;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/b;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/b;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/b;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/b;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcom/google/android/material/bottomappbar/b;->c:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/b;->d:Z

    .line 3
    sget v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->e0:I

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t0(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p1

    int-to-float p1, p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_0
    return-void
.end method
