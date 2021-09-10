.class Lcom/google/android/material/floatingactionbutton/e$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/e;->G(Lcom/google/android/material/floatingactionbutton/e$h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/e$h;

.field final synthetic c:Lcom/google/android/material/floatingactionbutton/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/e;ZLcom/google/android/material/floatingactionbutton/e$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e$b;->c:Lcom/google/android/material/floatingactionbutton/e;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/e$b;->a:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/e$b;->b:Lcom/google/android/material/floatingactionbutton/e$h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e$b;->c:Lcom/google/android/material/floatingactionbutton/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/e;->a(Lcom/google/android/material/floatingactionbutton/e;I)I

    .line 2
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e$b;->c:Lcom/google/android/material/floatingactionbutton/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/e;->b(Lcom/google/android/material/floatingactionbutton/e;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e$b;->b:Lcom/google/android/material/floatingactionbutton/e$h;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/e$h;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e$b;->c:Lcom/google/android/material/floatingactionbutton/e;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/e$b;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->l(IZ)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e$b;->c:Lcom/google/android/material/floatingactionbutton/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/e;->a(Lcom/google/android/material/floatingactionbutton/e;I)I

    .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e$b;->c:Lcom/google/android/material/floatingactionbutton/e;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/e;->b(Lcom/google/android/material/floatingactionbutton/e;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
