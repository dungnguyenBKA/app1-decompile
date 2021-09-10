.class Lcom/google/android/material/textfield/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/l;->a:Lcom/google/android/material/textfield/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/l;->a:Lcom/google/android/material/textfield/h;

    iget-object v0, p1, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lcom/google/android/material/textfield/h;->h(Lcom/google/android/material/textfield/h;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/l;->a:Lcom/google/android/material/textfield/h;

    invoke-static {p1}, Lcom/google/android/material/textfield/h;->i(Lcom/google/android/material/textfield/h;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
