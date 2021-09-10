.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->e:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/base/R$styleable;->a:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    const/4 p2, 0x1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->c:I

    .line 9
    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->c:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 14
    :cond_0
    :try_start_1
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->c:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;
    :try_end_1
    .catch Lbw$a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "SignInButton"

    const-string v0, "Sign in button not found, using placeholder instead"

    .line 15
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->c:I

    .line 17
    new-instance v1, Lcom/google/android/gms/common/internal/SignInButtonImpl;

    .line 18
    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/common/internal/SignInButtonImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->a(Landroid/content/res/Resources;II)V

    .line 20
    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_0
    move-exception p2

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->e:Landroid/view/View$OnClickListener;

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
